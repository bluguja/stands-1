# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# Character.create(name: 'Luke', movie: movies.first)


User.create(first_name: "John", last_name: "Player",type: "Teacher" ,email: "teacher@gmail.com", password: "111111")
User.create(first_name: "John1", last_name: "Player",type: "Teacher" ,email: "teacher1@gmail.com", password: "111111")
User.create(first_name: "John2", last_name: "Player",type: "Teacher" ,email: "teacher2@gmail.com", password: "111111")


User.create(first_name: "kola", last_name: "Player",type: "Student" ,email: "student@gmail.com", password: "111111")
User.create(first_name: "kola1", last_name: "Player",type: "Student" ,email: "student1@gmail.com", password: "111111")
User.create(first_name: "kola2", last_name: "Player",type: "Student" ,email: "student2@gmail.com", password: "111111")

teacher = Teacher.find_by(email: "teacher@gmail.com")
teacher1 = Teacher.find_by(email: "teacher1@gmail.com")

student = Student.find_by(email: "student@gmail.com")
student1 = Student.find_by(email: "student1@gmail.com")

student.schedules.find_or_create_by(teacher_id: teacher.id, schedule_date: Time.zone.now)
student.schedules.find_or_create_by(teacher_id: teacher.id, schedule_date: Time.zone.now+24000)
student1.schedules.find_or_create_by(teacher_id: teacher1.id, schedule_date: Time.zone.now+24400)