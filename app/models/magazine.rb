require 'openssl'

class Magazine < ApplicationRecord
  ITERATION = 20000
  DIGEST = OpenSSL::Digest::SHA256.new


  has_many :items
  validates :email, :name, presence: true
  validates :email, :name, uniqueness: true

  attr_accessor :password

  validates_presence_of :password, on: :create
  validates_confirmation_of :password

  before_save :encript_password

  def encript_password
    if self.password.present?
      self.password_salt = Magazine.hash_to_string(OpenSSL::Random.random_bytes(16))
      self.password_hash = Magazine.hash_to_string(
        OpenSSL::PKCS5.pbkdf2_hmac(self.password, self.password_salt, ITERATION, DIGEST.length, DIGEST)
      )
    end
  end

  def self.hash_to_string(password_hash)
    password_hash.unpack('H*')[0]
  end

  def self.authenticate(email, password)
    magazine = find_by(email: email)
    if magazine.present? && magazine.password_hash == Magazine.hash_to_string(OpenSSL::PKCS5.pbkdf2_hmac(self.password, self.password_salt, ITERATION, DIGEST.length, DIGEST))
      magazine
    else
      nil
    end
  end
end
