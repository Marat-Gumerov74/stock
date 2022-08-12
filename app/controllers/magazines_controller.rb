class MagazinesController < ApplicationController
  def index
  end

  def new
  end

  def edit
  end

  def show
    @magazine = Magazine.new(name: '54')
  end
end
