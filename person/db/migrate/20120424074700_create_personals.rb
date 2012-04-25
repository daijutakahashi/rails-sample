class CreatePersonals < ActiveRecord::Migration
  def change
    create_table :personals do |t|
      t.string :name
      t.string :address
      t.date :birthday
      t.integer :age
      t.float :hight
      t.float :weight
      t.references :category

      t.timestamps
    end
  end
end
