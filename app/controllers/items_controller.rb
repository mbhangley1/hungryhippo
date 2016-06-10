class ItemsController < ApplicationController
def new_form

  end

  def create_row
    @item = Item.new
    @item.name = params["name"]
    @item.image_url = params["image_url"]
    @item.save
    redirect_to("http://localhost:3000/items")
  end

  def index
    @list_of_items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit_form
    @item = Item.find(params[:id])
  end

  def update_item
    @item = Item.find(params[:id])
    @item.name = params[:name]
    @item.image_url = params[:image_url]
    @item.save
    render("show")
  end

  def destroy
    @item = Director.find(params[:id])
    @item.destroy
  end
end
