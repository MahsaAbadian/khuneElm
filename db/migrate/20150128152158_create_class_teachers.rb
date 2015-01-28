class CreateClassTeachers < ActiveRecord::Migration
  def change
    create_table :class_teachers do |t|
      t.integer :user_id
      t.integer :clazz_id

      t.timestamps
    end
  end
end
