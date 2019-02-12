class ChangeDefaultValue < ActiveRecord::Migration[5.2]
  def change
    change_column_null :tasks, :completed, false
  end
end
# change_column_null :products, :name, false
# change_column_default :products, :approved, from: true, to: false
