class CreateWords < ActiveRecord::Migration[5.1]
  def change
    create_table :words do |t|
      t.string :name
      t.integer :result_id
      t.integer :lession_id
      t.integer :learned
      t.integer :category_id

      t.timestamps
    end
  end
end
