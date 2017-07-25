class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :photographer_area
      t.string :photographer_language
      t.string :camera_type
      t.integer :camera_years
      t.string :address
      t.string :listing_title
      t.text :listing_content
      t.integer :priceperperson
      t.boolean :active
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
