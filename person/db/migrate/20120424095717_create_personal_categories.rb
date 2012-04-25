class CreatePersonalCategories < ActiveRecord::Migration
  def change
    create_table :personal_categories do |t|

      t.timestamps
    end
  end
end
