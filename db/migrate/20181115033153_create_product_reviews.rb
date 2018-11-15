class CreateProductReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :product_reviews do |t|
      t.string :comment
      t.integer :rate
    end
  end
end
