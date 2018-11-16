# frozen_string_literal: true

# class for controlling model product
class ProductController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :find_product, only: [:destroy]

  def index
    product = Product.all
    if product.present?
      render json: product, status: :ok
    else
      render json: {
        data: 'product 404'
      }, status: :unprocesable_entity
    end
  end

  def show
    product = Product.find_by(id: params[:id])
    if product.present?
      render json: product, status: :ok
    else
      render json: {
        data: 'product 404'
      }, status: :unprocesable_entity
    end
  end

  def create
    product = Product.new(params.require(:product).permit(:name, :description, :price, :stock))
    if product.save
      render json: {
        message: 'new product created'
      }, status: :created
    else
      render json: {
        message: 'product not created'
      }, status: :unprocesable_entity
    end
  end

  def destroy
    if @product 
      @product.destroy!
      render json: {
        message: 'product has been destroyed'
      }, status: :ok
    else
      render json: {
        message: 'failed to destroy product'
      }, status: :unprocesable_entity
    end
  end

  private
  def find_product
    @product = Product.find_by(id: params[:id])
  end
end
