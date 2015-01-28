class CreateEnrolements < ActiveRecord::Migration
  def change
    create_table :enrolements do |t|
      t.float :grade

      t.timestamps
    end
  end
end
