require 'faker'

Business.destroy_all
Employee.destroy_all
Vehicle.destroy_all
Shift.destroy_all

# categories seed data
environment_seed_file = File.join(Rails.root, 'db', 'seeds', "#{Rails.env}.rb")


employees_first = ["Bob", "Homer", "Bart", "Louise", "Tina"]
employees_last = ["Belcher", "Simpson", "Simpson", "Belcher", "Belcher"]

1.times do
  Business.create({ first_name: employees_first,
                    last_name: employees_last
                    email: Faker::Internet.free_email(employees_first)})
end
1.times do
  Employee.create({ first_name: employees_first,
                    last_name: employees_last
                    email: Faker::Internet.free_email(employees_first)})
end
1.times do
  Vehicle.create({ first_name: employees_first,
                    last_name: employees_last
                    email: Faker::Internet.free_email(employees_first)})
end


#goals seed data
Business = Business.all
categories = Category.all

1.times do

end
  vehicle_year = ['2013', '2015', '2016']
  vehicle = ["Ford", 'Mercedes-Benz', 'Toyota']
  vehicle_model = ['Transit Van', 'Sprinter', 'Prius']
  vehicle_mpg = ['25','21', '50']
  vehicle_total_miles = ['20000', '5000', ]

users.each do |user|
  shift = shift.create({ title: .sentence,
                completed: false,
                archived: false,
                category: categories.sample,
                user: user})

   (0..21).to_a.sample.times do
      goal.days.create({status: "achieved"})
    end
end
