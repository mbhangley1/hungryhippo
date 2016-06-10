class ListsController < ApplicationController
  def new_form
  end

  def create_row
    @list = List.new
    @list.title = params["title"]
    @list.date = params["date"]
    @list.description = params["description"]
    @list.image_url = params["image_url"]
    @list.save
    redirect_to("http://localhost:3000/movies")
  end

  def index
    @list_of_lists = List.all
  end

  def show
  end
    @list = List.find(params[:id])

  def edit_form
    @list = List.find(params[:id])
  end

  def update_list
    @list = List.find(params[:id])
    @list.title = params[:title]
    @list.date = params[:date]
    @list.description = params[:description]
    @list.image_url = params[:image_url]
    @list.save
    render("show")
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
  end


end
