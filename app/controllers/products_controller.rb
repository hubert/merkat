class ProductsController < ApplicationController
  def index
    params[:search] ||= {}
    @products = ClientZ::ProductSearcher.search(params[:search])
  end
end
