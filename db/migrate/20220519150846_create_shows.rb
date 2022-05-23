class CreateShows < ActiveRecord::Migration[7.0]
  def change
    create_table :shows do |t|
      t.string :name
      t.string :image_URL
      t.string :description

      t.timestamps
    end
  end
end
