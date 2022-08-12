class MagazinesController < ApplicationController
  def index
  end

  def new
  end

  def edit
  end

  def show
    @magazine = Magazine.new(name: '54')

    @item = [
      Item.new(name: 'bita', created_at: Date.parse('12.08.2022'))
    ]
  end
end
