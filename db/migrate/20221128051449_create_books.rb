class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :year
      t.string :description
      t.string :image_url
      t.string :category

      t.timestamps
    end
  end
end
