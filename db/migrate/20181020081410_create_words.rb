class CreateWords < ActiveRecord::Migration[5.1]
  def change
    create_table :words do |t|
      t.string :name
      t.integer :answer_id
      t.integer :lesson_id
      t.integer :learned
      t.integer :category_id

      t.timestamps
    end
  end
end
