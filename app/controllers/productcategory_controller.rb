# frozen_string_literal: true

# ProdCat Controller
class ProductcategoryController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :find_prodcat, only: [:destroy]

  def index
    @prodcat = ProductCategory.all
    if @prodcat.present?
      render json: @prodcat, status: :ok
    else
      json_not_found
    end
  end

  def show
    @prodcat = ProductCategory.find_by(id: params[:id])
  end

  def create
    @prodcat = ProductCategory.create(prodcat_params)

    if @prodcat.save
      render json: @prodcat, status: :created
    else
      json_not_found
    end
  end

  def update
    @prodcat.update(prodcat_params)
    head :no_content
  end

  def destroy
    @prodcat.destroy
    head :no_content
  end

  private

  def find_prodcat
    @prodcat = ProductCategory.find_by(id: params[:id])
  end

  def json_not_found
    render json: {
      message: 'Data Error/not Found'
    }, status: :unprocessable_entity
  end

  def prodcat_params
    params.require(:prodcat).permit(:product_id, :category_id)
  end
end
