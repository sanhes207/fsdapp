if Project.count.zero?
  puts 'Seeding projects'
  Project.create(title: 'testing task')
end
