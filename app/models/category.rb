# frozen_string_literal: true

# class for category
class Category < ApplicationRecord
  has_many :product_category
  has_many :category, through: :product_category
end
