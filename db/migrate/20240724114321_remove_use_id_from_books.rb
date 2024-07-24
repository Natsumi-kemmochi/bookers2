class RemoveUseIdFromBooks < ActiveRecord::Migration[6.1]
  def change
    remove_column :books, :use_id, :integer
  end
end
