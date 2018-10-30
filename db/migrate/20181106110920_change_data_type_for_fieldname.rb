class ChangeDataTypeForFieldname < ActiveRecord::Migration[5.1]
  def change
    change_table :user do |t|
      t.change :admin, :boolean
    end
  end
end
