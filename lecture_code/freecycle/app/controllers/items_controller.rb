class ItemsController < ApplicationController

  def index
    @items = Item.all
    render 'index'
  end

  def show
    @item = Item.find_by_id(params[:id])
    render 'show'
  end

  def new
    @item = Item.new
    render 'new'
  end

  def create
    item = Item.new
    item.id = 8
    item.title = params[:title]
    item.address = params[:address]

    @items = Item.all
    @items.push(item)

    render 'index'
  end

  def edit
    @item = Item.find_by_id(params[:id])
  end

  def update
    @items = Item.all
    item = Item.find_by_id(params[:id])
    item.title = params[:title]
    item.address = params[:address]

    render 'index'
  end

end
