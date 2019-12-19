if Teacher.count.zero?
  puts 'Seeding Teachers'
  Teacher.create!(first_name: 'Усачева',last_name: 'Дарья', description:'Main Teacher')
  Teacher.create!(first_name: 'John',last_name: 'Dow', description:'Second Teacher')
  Teacher.create!(first_name: 'Jane',last_name: 'Dow', description:'Third Teacher')
end
