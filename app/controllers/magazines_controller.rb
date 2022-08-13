class MagazinesController < ApplicationController
  def index
    @magazines = [
      Magazine.new(
        id: 3,
        name: '55'
      ),
      Magazine.new(
        id: 4,
        name: '56'
      )
    ]
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
    @new_item = Item.new
  end
end
