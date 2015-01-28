class AddClazzIdToClassSessions < ActiveRecord::Migration
  def change
    add_column :class_sessions, :clazz_id, :integer
  end
end
