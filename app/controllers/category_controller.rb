class CategoryController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :find_category, only: [:destroy]

    def index
        category = Category.all
        if category.present?
            render json: category, status: :ok
        else
            render json: {
                data: 'not found'
            }, status: :unproccesable_entity         
        end
    end

    def show
        category = Category.find_by(id: params[:id])
        if category.present?
          render json: category, status: :ok
        else
          render json: {
            data: 'product not found'
          }, status: :unprocessable_entity
        end
      end
    
      def destroy
        if @category
          @category.destroy!
          render json: {
            message: 'success deleted product'
          }, status: :ok
        else
          render json: {
            message: 'failed deleted product'
          }, status: :unprocessable_entity
        end
      end
    
      def create
        category = Category.new(params.require(:category).permit(:name, :description))
        if category.save
          render json: {
            message: 'success inserted'
          }, status: :created
        else
          render json: {
            message: 'failed inserted'
          }, status: :unprocessable_entity
        end
      end
    
      private
    
      def find_category
        @category = Category.find_by(id: params[:id])
      end

end

