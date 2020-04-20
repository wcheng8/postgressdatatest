class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :name
      t.float :calories
      t.boolean :has

      t.timestamps
    end
  end
end
