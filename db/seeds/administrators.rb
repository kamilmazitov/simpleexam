if Administrator.count.zero?
  puts 'Seeding Adminstrators'
  Administrator.create!(email: 'mazitov.kamil.00@mail.ru', first_name: 'Камиль',last_name: 'Мазитов', password: '/Road.to.the.Dream/', password_confirmation: '/Road.to.the.Dream/')
end
