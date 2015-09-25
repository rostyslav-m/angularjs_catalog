class ItemsController < ApplicationController

  # GET /items
  # GET /items.json
  def index
    render json: Item.all
  end

  # GET /items/:id
  # GET /items/:id.json
  def show
    render json: Item.find(params[:id])
  end

  def new    
  end

  def create
    respond_with Item.create!(params.permit(:name, :describe, :price))
  end
  
#  def destroy
#    respond_with Item.destroy(params[:id])
#  end


end
