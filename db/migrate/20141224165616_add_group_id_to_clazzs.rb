class AddGroupIdToClazzs < ActiveRecord::Migration
  def change
    add_column :clazzs, :group_id, :integer
  end
end
