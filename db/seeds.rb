puts "Clearing old data..."
Task.destroy_all
Board.destroy_all

Project.destroy_all

puts "Seeding projects..."
client1 = Project.create(
    title: 'Client 1',
    favorite: false,
    color: '#e1bee7'
)

client2 = Project.create(
    title: 'Client 2',
    favorite: true,
    color: '#e1bee7'
)

client3 = Project.create(
    title: 'Client 3',
    favorite: false,
    color: '#e1bee7'
)

client4 = Project.create(
    title: 'Client 4',
    favorite: false,
    color: '#e1bee7'
)


puts "Seeding boards..."
client1_backlog = client1.boards.build(name: 'Backlog')
client1_todo = client1.boards.build(name: 'To Do')
client1_completed = client1.boards.build(name: 'Completed')
client1.save


apple_backlog = client2.boards.build(name: 'Backlog')
apple_todo = client2.boards.build(name: 'To Do')
apple_completed = client2.boards.build(name: 'Completed')
client2.save

client3_backlog = client3.boards.build(name: 'Backlog')
client3_todo = client3.boards.build(name: 'To Do')
client3_completed = client3.boards.build(name: 'Completed')
client3.save


puts "Seeding tasks..."
client3_todo.tasks.build(
    name: 'classes',
    due_date: Date.new(2022,10,1),
    description: 'study a chapter a day',
    status: 'Not Started',
    priority: 'Medium',
    completed: false
)

client3_todo.tasks.build(
    name: 'Flights',
    due_date: Date.new(2022,10,1),
    description: 'order of flights',
    status: 'Not Started',
    priority: 'Low',
    completed: false
)


client3_todo.tasks.build(
    name: 'audit HR',
    due_date: Date.new(2022,10,1),
    description: 'audit Hr department',
    status: 'Not Started',
    priority: 'High',
    completed: false
)

client3_todo.save


client3_completed.tasks.build(
    name: 'Homepage Clickmap Changes',
    due_date: Date.new(2022,9,29),
    description: '',
    status: 'Complete',
    priority: 'Medium',
    completed: true
)

client3_completed.save



client4_todo.tasks.build(
    name: 'Audit',
    due_date: Date.new(2022,10,1),
    description: 'Audit the finance department',
    status: 'Not Started',
    priority: 'High',
    completed: false
)

client4_todo.tasks.build(
    name: 'Audit',
    due_date: Date.new(2022,10,4),
    description: 'perform audit in the quality assurance department',
    status: 'Not Started',
    priority: 'Medium',
    completed: false
)

client4_todo.tasks.build(
    name: 'OSHA',
    due_date: Date.new(2022,10,7),
    description: 'Train new staff on safety within the airport',
    status: 'Not Started',
    priority: 'High',
    completed: false
)

client4_todo.save


client1_todo.tasks.build(
    name: 'meeting briefs',
    due_date: Date.new(2022,9,29),
    description: 'update on progress',
    status: 'Complete',
    priority: 'High',
    completed: true
)

client1_todo.tasks.build(
    name: 'sales flights',
    due_date: Date.new(2022,9,29),
    description: 'visit tv stations to improve sales',
    status: 'In Progress',
    priority: 'High',
    completed: false
)

client1_todo.tasks.build(
    name: 'Promotion for products',
    due_date: Date.new(2022,9,30),
    description: 'go out and reach out to potentiat target group',
    status: 'In Progress',
    priority: 'High',
    completed: false
)

client1_todo.tasks.build(
    name: 'Driving Test',
    due_date: Date.new(2022,9,30),
    description: 'driving school lessons',
    status: 'Not Started',
    priority: 'Low',
    completed: false
)

client1_todo.save


puts "Done Seeding!"