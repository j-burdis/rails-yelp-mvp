class AddRestaurantForeignKey < ActiveRecord::Migration[7.2]
  def change
    add_reference :reviews, :restaurant, index: true
  end
end
