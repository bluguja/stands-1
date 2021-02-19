class Schedule < ApplicationRecord
  belongs_to :teacher, :class_name => "User", :foreign_key => "teacher_id"
  belongs_to :student, :class_name => "User", :foreign_key => "student_id"
  validates_presence_of :schedule_date
end
