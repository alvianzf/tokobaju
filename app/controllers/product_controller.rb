# frozen_string_literal: true

# class for controlling model product
class ProductController < ApplicationController
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
    if product.present
      render json: product, status: :ok
    else
      render json: {
        data: 'product 404'
      }, status: :unprocesable_entity
    end
  end

  def create
    product = Product.new(params.require(:product).permit(:name, :description))
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
    product = Product.find_by(id: params[:id])
    if product.destroy!
      render json: {
        message: 'product has been destroyed'
      }, status: :ok
    else
      render json: {
        message: 'failed to destroy product'
      }, status: :unprocesable_entity
    end
  end
end
