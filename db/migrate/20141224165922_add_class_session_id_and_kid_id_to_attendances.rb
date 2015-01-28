class AddClassSessionIdAndKidIdToAttendances < ActiveRecord::Migration
  def change
    add_column :attendances, :class_session_id, :integer
    add_column :attendances, :kid_id, :integer
  end
end
