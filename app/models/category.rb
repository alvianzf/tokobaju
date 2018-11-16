# frozen_string_literal: true

# class for category
class Category < ApplicationRecord
<<<<<<< HEAD
  has_many :product_category
  has_many :category, through: :product_category
=======
    has_many :product_category
    has_many :category, through: :product_category
>>>>>>> e59c1268149107ef42c4deef7bb38c4cf3147a1d
end
