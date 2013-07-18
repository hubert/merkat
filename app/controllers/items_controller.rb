class ItemsController < ApplicationController
  def index
    @items = Item.where(:account_id => current_account_id) 
  end

  def create
    @item = Item.create(item_params)
    render :json => @item, :status => 200
  end

  def destroy
    @item = Item.destroy(params[:id])
    render :json => @item, :status => 200
  end

  private

  def item_params
    ActionController::Parameters.new(params.transform_keys { |k| k.underscore.to_sym }.slice(:account_id, :title, :photo_url, :price)).permit!
  end
end
