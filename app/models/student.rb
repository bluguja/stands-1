class Student < User
  has_many :schedules
  has_many :teachers, through: :schedules
end
