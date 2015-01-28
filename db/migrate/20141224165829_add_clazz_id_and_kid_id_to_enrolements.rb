class AddClazzIdAndKidIdToEnrolements < ActiveRecord::Migration
  def change
    add_column :enrolements, :clazz_id, :integer
    add_column :enrolements, :kid_id, :integer
  end
end
