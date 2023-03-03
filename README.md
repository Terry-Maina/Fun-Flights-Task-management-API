# Fun Flights Task Management API

This project management API is a simple web API where you make CRUD calls to a server to organize any project management app.

[demo here]()

## Front-end Project Task Management Interface

You can use this API in conjunction with my front-end project management app [see the repo](https://github.com/Terry-Maina/fun-flights-task-management-client-side)

## Technologies Used in API

- Ruby
- ActiveRecord
- SQLite3
- Rack
- Raker
- Faker
- sinatra active-record

## How To Use

- Run bundle init to install the gemfile automatically
- Identify the ruby gems for your project
- Run bundle install to install the gemfile.lock automatically
- Run gem install sqlite3 to install the development file
- Run bundle exec rake db:create_migration NAME=add_create_users.rb to have the migrate files autogenerated automatically
- Run bundle exec rake db:create_migration to start the migration



# create migrations with activerecord
bundle exec rake db:create_migration NAME=add_create_users

# if you would like to use seed data
bundle exec rake db:seed

# start server
shotgun
```

Shotgun uses http://127.0.0.1:9393/ by default.

## Relationships within Database

### Projects

- A project has many boards
- A project has many tasks through boards

### Boards

- Every board belongs to a project
- Every board has many tasks

### Tasks

- Each task belongs to a board
- Each task belongs to project though a board

## Example of screenshot Calls You Can Make With API


### Projects

You can make all CRUD calls for the projects database.

- CREATE projects
- GET/RETRIEVE all projects
- GET/RETRIEVE individual project
- DELETE a project
- UPDATE a project

- link <img width="544" alt="Screenshot 2023-03-03 at 03 03 54" src="https://user-images.githubusercontent.com/108924130/222644328-65289567-f2c2-4d42-890b-9cf018eac7b0.png">

#### Example: Retrieve All Projects

Displays the projects and all of the tasks associated with the project

```js

fetch('http://localhost:9393/projects')
      .then((res) => res.json())
      .then((data) => data.projects)


// output
{
message: "projects successfully requested",
projects: [
{
id: 1,
title: "Client 1",
created_at: "2022-09-28T23:50:45.619Z",
updated_at: "2022-10-02T14:23:11.091Z",
favorite: true,
color: "#b2ebf2",
tasks: [
{
id: 8,
name: "Banner - Banner - DD994 - 25 Dollars Off 100 FSH 100",
due_date: "2022-09-29",
description: "promo code only\nBanner - Banner - DD994 - 25 Dollars Off 100 FSH 100\nGlobal Disclaimer - Banner - DD994 - 25 Dollars Off 100 FSH 100\nHomepage - Banner - DD994 - 25 Dollars Off 100 FSH 100",
status: "Complete",
priority: "High",
completed: true,
board_id: 2,
created_at: "2022-09-28T23:50:45.679Z",
updated_at: "2022-09-28T23:50:45.679Z"
},
{
id: 9,
name: "Banner - DND139 - 25 Off 100 FSH 100",
due_date: "2022-09-29",
description: "promo code only\nGlobal Banner - Banner - DND139 - 25 Off 100 FSH 100\nGlobal Disclaimer - Banner - DND139 - 25 Off 100 FSH 100\nHomepage - Banner - DND139 - 25 Off 100 FSH 100",
status: "In Progress",
priority: "High",
completed: false,
board_id: 2,
created_at: "2022-09-28T23:50:45.680Z",
updated_at: "2022-09-28T23:50:45.680Z"
},
{
id: 10,
name: "Promo Code TEST",
due_date: "2022-09-30",
description: "Global Banner - Banner - TEST - In Monetate\nGlobal Disclaimer - Banner - DND142 - 25 Dollars Off 100 FSH 100\nGlobal Disclaimer - Banner - DND141 - 25 Off 100 FSH 100\nGlobal Banner - Banner - TEST - In Monetate",
status: "In Progress",
priority: "High",
completed: false,
board_id: 2,
created_at: "2022-09-28T23:50:45.680Z",
updated_at: "2022-09-28T23:50:45.680Z"
},
{
id: 11,
name: "Workspace for Test",
due_date: "2022-09-30",
description: "",
status: "Not Started",
priority: "Low",
completed: false,
board_id: 2,
created_at: "2022-09-28T23:50:45.680Z",
updated_at: "2022-09-28T23:50:45.680Z"
}
]
},
}
```

#### Example: Retrieve a Specific Project

Shows you all boards and tasks associated with the project

fetch('http://localhost:9393/projects/1')
      .then((res) => res.json())
      .then((data) => data.projects)


// output
{
message: "project successfully requested",
project: {
id: 1,
title: "Client 1",
created_at: "2022-09-28T23:50:45.619Z",
updated_at: "2022-10-02T14:23:11.091Z",
favorite: true,
color: "#b2ebf2",
boards: [
{
id: 1,
name: "Backlog",
created_at: "2022-09-28T23:50:45.645Z",
updated_at: "2022-09-28T23:50:45.645Z",
project_id: 1,
tasks: [ ]
},
{
id: 2,
name: "To Do",
created_at: "2022-09-28T23:50:45.646Z",
updated_at: "2022-09-28T23:50:45.646Z",
project_id: 1,
tasks: [
{
id: 8,
name: "Banner - Banner - DD994 - 25 Dollars Off 100 FSH 100",
due_date: "2022-09-29",
description: "promo code only\nBanner - Banner - DD994 - 25 Dollars Off 100 FSH 100\nGlobal Disclaimer - Banner - DD994 - 25 Dollars Off 100 FSH 100\nHomepage - Banner - DD994 - 25 Dollars Off 100 FSH 100",
status: "Complete",
priority: "High",
completed: true,
board_id: 2,
created_at: "2022-09-28T23:50:45.679Z",
updated_at: "2022-09-28T23:50:45.679Z"
},
{
id: 9,
name: "Banner - DND139 - 25 Off 100 FSH 100",
due_date: "2022-09-29",
description: "promo code only\nGlobal Banner - Banner - DND139 - 25 Off 100 FSH 100\nGlobal Disclaimer - Banner - DND139 - 25 Off 100 FSH 100\nHomepage - Banner - DND139 - 25 Off 100 FSH 100",
status: "In Progress",
priority: "High",
completed: false,
board_id: 2,
created_at: "2022-09-28T23:50:45.680Z",
updated_at: "2022-09-28T23:50:45.680Z"
},
{
id: 10,
name: "Promo Code TEST",
due_date: "2022-09-30",
description: "Global Banner - Banner - TEST - In Monetate\nGlobal Disclaimer - Banner - DND142 - 25 Dollars Off 100 FSH 100\nGlobal Disclaimer - Banner - DND141 - 25 Off 100 FSH 100\nGlobal Banner - Banner - TEST - In Monetate",
status: "In Progress",
priority: "High",
completed: false,
board_id: 2,
created_at: "2022-09-28T23:50:45.680Z",
updated_at: "2022-09-28T23:50:45.680Z"
},
{
id: 11,
name: "Workspace for Test",
due_date: "2022-09-30",
description: "",
status: "Not Started",
priority: "Low",
completed: false,
board_id: 2,
created_at: "2022-09-28T23:50:45.680Z",
updated_at: "2022-09-28T23:50:45.680Z"
}
]
},
{
id: 3,
name: "Completed",
created_at: "2022-09-28T23:50:45.646Z",
updated_at: "2022-09-28T23:50:45.646Z",
project_id: 1,
tasks: [ ]
}
]
}
}
```

### Boards

You can make all CRUD calls for the projects database.

- CREATE boards
- GET/RETRIEVE all boards
- DELETE a board
- UPDATE a board

### Example: Create a Board

```js
fetch('http://localhost:9393/projects/boards/', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        accept: 'application/json',
      },
      body: JSON.stringify({
        name: 'New Board',
        project_id: 1, #mandatory to make a new board
      }),
    })

// output
{
    "message": "board successfully created",
    "board": {
        "id": 10,
        "name": "New Board",
        "created_at": "2022-10-02T15:11:11.647Z",
        "updated_at": "2022-10-02T15:11:11.647Z",
        "project_id": 1
    }
}
```

### Tasks

You can make all CRUD calls for the projects database.

- CREATE tasks
- GET/RETRIEVE all tasks
- DELETE a task
- UPDATE a task

### Example: Delete a Task

```js
fetch(`http://localhost:9393/tasks/11`, {
      method: 'DELETE',
    })

// output
{
    "message": "task successfully deleted",
    "task": {
        "id": 11,
        "name": "Workspace for Test",
        "due_date": "2022-09-30",
        "description": "",
        "status": "Not Started",
        "priority": "Low",
        "completed": false,
        "board_id": 2,
        "created_at": "2021-09-28T23:50:45.680Z",
        "updated_at": "2021-09-28T23:50:45.680Z"
    }
}
```