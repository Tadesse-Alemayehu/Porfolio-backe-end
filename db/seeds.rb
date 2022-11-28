# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Project.create([  {
    name: "Yellow Room",
    title: "An online hotel room reservation app",
    description: "This is an online hotel room reservation app. We give it a fancy name of 'yellow room'
      It's a fully functioning app with a backend setup in Rails and provides token base authentication.",
    desktop_pic: "images/pictures/project-snapshots/PNG/Yellow-Room.png",
    mobile_pic: "images/pictures/project-snapshots/PNG/card/Yellow-Room.png",
    live_link: "https://yellow-rooms.netlify.app/",
    source_code: "https://github.com/Tadesse-Alemayehu/YellowRooms-Front",
  },
  {
    name: "I Spend",
    title: "A mobile web application where you can manage your budget",
    description: "a mobile web application where you can manage your budget: you have a list of transactions
      associated with a category, so that you can see how much money you spent and on what.",
    desktop_pic: "images/pictures/project-snapshots/PNG/I-Spend.png",
    mobile_pic: "images/pictures/project-snapshots/PNG/card/I-Spend.png",
    live_link: "https://quiet-beach-52239.herokuapp.com/",
    source_code: "https://github.com/Tadesse-Alemayehu/I-spend",
  },
    {
    name: "My weather",
    title: "Check any city for a weather info",
    description: "This app enables users to get instant Information regarding weather conditions.
      If you share your location, it will fetch the top 10 cities near you and all the weather detail for each.
      You can also search for any city in the world and get the detail. It makes use of 3 different APIs. To fetch data, map coordinates,
      and locate your area and cities near you.",
    desktop_pic: "images/pictures/project-snapshots/PNG/My-weather.png",
    mobile_pic:  "images/pictures/project-snapshots/PNG/card/My-weather.png",
    live_link: "https://my-city-weather-app.netlify.app/",
    source_code: "https://github.com/Tadesse-Alemayehu/My-weather",
  },
    {
    name: "Book Store",
    title: "Store and track your favorite books",
    description: 'The Bookstore is a website similar to the "Awesome Books" website. Here we will create an MVP version of it that allows you to:
      Display a list of books, Add a book and Remove a selected book.',
    desktop_pic: "images/pictures/project-snapshots/PNG/book-store.png",
    mobile_pic:  "images/pictures/project-snapshots/PNG/card/book-store.png",
    live_link: "https://tadesse-bookstore.netlify.app/",
    source_code: "https://github.com/Tadesse-Alemayehu/Bookstore",
  },{
    name: "Space Travelers Hub",
    title: "work with the real live data from the SpaceX API.",
    description: "In this task, we will be working with the real live data from the SpaceX API.
      Our task is to build a web application for a company that provides commercial and scientific space travel services.
      The application will allow users to book rockets and join selected space missions.",
    desktop_pic: "images/pictures/project-snapshots/PNG/space-travel.png",
    mobile_pic:  "images/pictures/project-snapshots/PNG/card/space-travel.png",
    live_link: "https://tadesse-jorge-space-travelers.netlify.app/",
    source_code: "https://github.com/Tadesse-Alemayehu/Space-Travelers",
  },{
    name: "To do lists",
    title: "To do list organizer",
    description: "This is a single-page application (SPA) that you can use to organize your daily schedule. You can create a task ✍🏼, mark a task as completed ✔, update its details ⚒, or delete it 🚩.All this without needing to reload a page. ✔",
    desktop_pic: "images/pictures/project-snapshots/PNG/To-Do-list.png",
    mobile_pic:  "images/pictures/project-snapshots/PNG/card/To-Do-list.png",
    live_link: "https://tadesse-alemayehu.github.io/To-Do-list/",
    source_code: "https://github.com/Tadesse-Alemayehu/To-Do-list",
  },{
    name: "Learn to code",
    title: "Learn to code",
    description: "Learn to code is a website I plan to use for my coding class (website) ✍🏼 where I'll be teaching students all about programming and coding in general and web development in particular. 😎 This project is totally made with JavaScript, CSS3 and HTML only.",
    desktop_pic: "images/pictures/project-snapshots/PNG/LEARN-TO-CODE.png",
    mobile_pic:  "images/pictures/project-snapshots/PNG/card/LEARN-TO-CODE.png",
    live_link: "https://tadesse-alemayehu.github.io/LEARN-TO-CODE/",
    source_code: "https://github.com/Tadesse-Alemayehu/LEARN-TO-CODE",
  },{
    name: "Rock-Paper-Scissors",
    title: "Learn to code",
    description: "Play this with a computer see if you can beat it 😎",
    desktop_pic: "images/pictures/project-snapshots/PNG/Rock-Paper-Scissors-Advance.png",
    mobile_pic:   "images/pictures/project-snapshots/PNG/card/Rock-Paper-Scissors-Advance.png",
    live_link:  "https://tadesse-alemayehu.github.io/Rock-Paper-Scissors-Advance/",
    source_code: "https://github.com/Tadesse-Alemayehu/Rock-Paper-Scissors-Advance",
  },{
    name: "Etch-A-Sketch",
    title: "Project two(drawing board)",
    description: "So you love to draw? Good! This is an Etch-a-sketch project and you can create an awesome drawing board with your pre-defined pixel range and draw your picture.",
    desktop_pic: "images/pictures/project-snapshots/PNG/Etch-A-Sketch.png",
    mobile_pic:   "images/pictures/project-snapshots/PNG/card/Etch-A-Sketch.png",
    live_link: "https://tadesse-alemayehu.github.io/Etch-A-Sketch/",
    source_code: "https://github.com/Tadesse-Alemayehu/Etch-A-Sketch",
  },{
    name: "YouTube-Clone",
    title: "Project five. Microverse Bootcamp",
    description: "Cloning a simple YouTube page with just HTML and CSS.",
    desktop_pic: "images/pictures/project-snapshots/PNG/YouTube-Clone.png",
    mobile_pic: "images/pictures/project-snapshots/PNG/card/YouTube-Clone.png",
    live_link: "https://tadesse-alemayehu.github.io/YouTube-Clone/",
    source_code: "https://github.com/Tadesse-Alemayehu/YouTube-Clone",
  }
  ])

  # TODO: update skill level and description of the technologies
  Technology.create([{
      name: "Adobe XD",
      icon: "images/technologies/adobe_xd_480px.svg",
      tech_type: "Design",
      description: "",
      skill_level: 9},{
      name: "Illustrator",
      icon: "images/technologies/adobe_illustrator_480px.svg",
      tech_type: "Design",
      description: "",
      skill_level: 9},{
      name: "Figma",
      icon: "images/technologies/figma_480px.svg",
      tech_type: "Design",
      description: "",
      skill_level: 9},{
      name: "Adobe Photoshop",
      icon: "images/technologies/adobe_photoshop_480px.svg",
      tech_type: "Design",
      description: "",
      skill_level: 9},{
      name: "JavaScript",
      icon: "images/technologies/javascript.svg",
      tech_type: "Frontend",
      description: "",
      skill_level: 9},{
      name: "React",
      icon: "images/technologies/react.svg",
      tech_type: "Frontend",
      description: "",
      skill_level: 9},{
      name: "Redux",
      icon: "images/technologies/redux_480px.svg",
      tech_type: "Frontend",
      description: "",
      skill_level: 9},{
      name: "Bootstrap",
      icon: "images/technologies/bootstrap.svg",
      tech_type: "Frontend",
      description: "",
      skill_level: 9},{
      name: "CSS3",
      icon: "images/technologies/css.svg",
      tech_type: "Frontend",
      description: "",
      skill_level: 9},{
      name: "Ruby",
      icon: "images/technologies/ruby.svg",
      tech_type: "Backend",
      description: "",
      skill_level: 9},{
      name: "Ruby on Rails",
      icon: "images/technologies/rails.svg",
      tech_type: "Backend",
      description: "",
      skill_level: 9},{
      name: "NodeJS",
      icon: "images/technologies/Node_Js_240px.svg",
      tech_type: "Backend",
      description: "",
      skill_level: 9},{
      name: "ExpressJS",
      icon: "images/technologies/express.svg",
      tech_type: "Backend",
      description: "",
      skill_level: 9},{
      name: "PostgreSQL",
      icon: "images/technologies/postgresql_480px.svg",
      tech_type: "Database",
      description: "",
      skill_level: 9},{
      name: "MongoDB",
      icon: "images/technologies/mongodb_480px.svg",
      tech_type: "Database",
      description: "",
      skill_level: 9},{
      name: "MsSQL",
      icon: "images/technologies/microsoft_sql_server_480px.svg",
      tech_type: "Database",
      description: "",
      skill_level: 9},{
      name: "MySql",
      icon: "images/technologies/MySQL_Logo_96px.svg",
      tech_type: "Database",
      description: "",
      skill_level: 9},{
      name: "RSpec",
      icon: "images/technologies/rspec.svg",
      tech_type: "Test",
      description: "",
      skill_level: 9},{
      name: "Capybara",
      icon: "images/technologies/", # TODO: update icons for Capybara
      tech_type: "Test",
      description: "",
      skill_level: 9},{
      name: "Jest",
      icon: "images/technologies/jest.svg",
      tech_type: "Test",
      description: "",
      skill_level: 9},{
      name: "React Test Library",
      icon: "images/technologies/react_test_library.svg",
      tech_type: "Test",
      description: "",
      skill_level: 9}
    ])
