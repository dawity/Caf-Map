class CreateCafeLocs < ActiveRecord::Migration
  def change
    create_table :cafe_locs do |t|
      t.float :latitude
      t.float :longitude
      t.string :address
      t.string :description
      t.string :title

      t.timestamps
    end
  end
end
