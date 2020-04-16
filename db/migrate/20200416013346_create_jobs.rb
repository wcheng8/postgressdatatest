class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :title
      t.decimal :salary
      t.boolean :is_full_time
    end
  end
end
