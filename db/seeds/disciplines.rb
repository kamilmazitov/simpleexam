if Discipline.count.zero?
  puts 'Seeding Disciplines'

  %w(Обществознание Математика).each do |name|
    Discipline.create!(name: name)
  end
end
