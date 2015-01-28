class CreateClassSessions < ActiveRecord::Migration
  def change
    create_table :class_sessions do |t|
      t.string :name
      t.datetime :date
      t.integer :end_page
      t.integer :goal_end_page
      t.text :report

      t.timestamps
    end
  end
end
