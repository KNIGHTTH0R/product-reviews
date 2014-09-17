class CatalogController < ApplicationController
  def index
      @products = Product.order(:brand, name: :asc)
  end
end
