class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :description
      t.float :price
      t.string :photo
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
