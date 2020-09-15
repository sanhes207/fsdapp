@Project = Project.where("title = 'testing task'").first
@Project.todos.create(text:'Сходить за молоком',isCompleted: false)
@Project.todos.create(text:'Вынести мусор',isCompleted: false)
@Project.todos.create(text:'Съездить в деревню к бабушке',isCompleted: true)
@Project.todos.create(text:'Учить Ruby',isCompleted: true)
@Project.todos.create(text:'Устроиться на работу',isCompleted: false)
