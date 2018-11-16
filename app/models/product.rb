# frozen_string_literal: true

class Product < ApplicationRecord
<<<<<<< HEAD
  has_many :product_category
  has_many :category, through: :product_category
=======
    has_many :product_category
    has_many :category, through: :product_category
>>>>>>> 10923ccc5f79e5a237a814d74ffa51cfdcf00850
end
