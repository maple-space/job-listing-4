# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "这个种子建立一個admin账户：admin@gmail.com , 並且创建10个public jobs, 以及10个hidden jobs"

create_account = User.create([email: 'admin@gmail.com', password: '12345678', password_confirmation: '12345678', is_admin: 'true'])
puts "Admin account created."

create_jos = for i in 1..10 do
  Job.create!([title: "全栈工程师-NO.#{i}", description: "这是用种子建立的第 #{i} 个全栈工程师工作", wage_upper_bound: rand(25..40)*1000, wage_lower_bound: rand(15..25)*1000, is_hidden: "false"])
end
puts "10 Public jobs created."

create_jos = for i in 1..10 do
  Job.create!([title: "全栈工程师-NO.#{i+10}", description: "这是用种子建立的第 #{i+10} 个Hidden工作", wage_upper_bound: rand(25..40)*1000, wage_lower_bound: rand(20..25)*1000,is_hidden: "true"])
end
puts "10 Hidden jobs created."
