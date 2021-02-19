class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.integer :teacher_id
      t.integer :student_id
      t.datetime :schedule_date
      t.timestamps
    end
  end
end
