
Technology.create([{
      name: "Adobe XD",
      icon: "/images/technologies/adobe_xd_480px.svg",
      tech_type: "Design",
      description: "I can design and do a prototype of website interaction and intuitively communicate the design with clients before the development phase commences.",
      skill_level: 6},{
      name: "Illustrator",
      icon: "/images/technologies/adobe_illustrator_480px.svg",
      tech_type: "Design",
      description: "I design professional logos and world-class vector graphics, from simple icons to complex 3D objects. Everything you see inside my portfolio is designed with AdobeXD and AdobeIL.",
      skill_level: 6},{
      name: "Figma",
      icon: "/images/technologies/figma_480px.svg",
      tech_type: "Design",
      description: "Okay, 😊 Maybe I'm not as expert as much as AdobeXD, but I'm defiantly parsing many designs from Figma templates. I can discuss Figma design with UI/Ux designers to the point I can make a suggestion.",
      skill_level: 4},{
      name: "Adobe Photoshop",
      icon: "/images/technologies/adobe_photoshop_480px.svg",
      tech_type: "Design",
      description: "It's a common task for a developer to be able to provide performance-wise pictures. I use Adobe Photoshop to deal with editing and optimizing raster images.",
      skill_level: 5},{
      name: "JavaScript",
      icon: "/images/technologies/javascript.svg",
      tech_type: "Frontend",
      description: "I have more than five years of development experience with JavaScrip. In simple words, I'm the master of it. I know the ins and outs of most advanced concepts.",
      skill_level: 10},{
      name: "ReactJS",
      icon: "/images/technologies/react.svg",
      tech_type: "Frontend",
      description: "Well, developing a web app with React is a joy. I have developed many web apps with React, and I'm still learning new things every day.",
      skill_level: 9},{
      name: "Redux",
      icon: "/images/technologies/redux_480px.svg",
      tech_type: "Frontend",
      description: "Well, managing the application state could be achieved in many ways, but Redux is the best and worth mentioning, especially for large-scale apps.",
      skill_level: 9},{
      name: "VueJS",
      icon: "/images/technologies/vue.svg",
      tech_type: "Frontend",
      description: "Next, to react, VueJs is my favorite frontend framework. I have developed many web apps with VueJs, and I'm still learning new skills every day.",
      skill_level: 9},{
      name: "TailwindCSS",
      icon: "/images/technologies/tailwindcss.svg",
      tech_type: "Frontend",
      description: "An amazing utility-first CSS framework, I use it to build many web apps and enjoy the experience.",
      skill_level: 7},{
      name: "Bootstrap",
      icon: "/images/technologies/bootstrap.svg",
      tech_type: "Frontend",
      description: "Bootstrap is among the common CSS frameworks in the web world, and I have hands-on experience with it.",
      skill_level: 7},{
      name: "Ruby",
      icon: "/images/technologies/ruby.svg",
      tech_type: "Backend",
      description: "My love for OOP is deep. As a result, I have worked with many OOP languages, but Ruby happens to be my favorite. I can deal with networks, databases, promises, and other common concepts.",
      skill_level: 10},{
      name: "Ruby on Rails",
      icon: "/images/technologies/rails.svg",
      tech_type: "Backend",
      description: "It's no secret I favor backend development. I love dealing with tasks that might intimidate most developers, like network request handling, schema design and optimization, and setting up security measures.",
      skill_level: 10},{
      name: "NodeJS",
      icon: "/images/technologies/Node_Js_240px.svg",
      tech_type: "Backend",
      description: "As a JavaScript full-stack engineer, I have developed many apps and obviously, Node is the backbone behind all of the apps.",
      skill_level: 9},{
      name: "ExpressJS",
      icon: "/images/technologies/express.svg",
      tech_type: "Backend",
      description: "ExpressJs is the most popular node framework, and I have used it to build many apps.",
      skill_level: 9},{
      name: "PostgreSQL",
      icon: "/images/technologies/postgresql_480px.svg",
      tech_type: "Database",
      description: "PostgreSQL is my favorite database, I have used it to build many apps, and I'm still learning new things every day.",
      skill_level: 8},{
      name: "MongoDB",
      icon: "/images/technologies/mongodb_480px.svg",
      tech_type: "Database",
      description: "MongoDB is a great database for many use cases. I'm a certified MongoDB engineer. I have used it to build many apps,  and I'm still learning new things every day.",
      skill_level: 8},{
      name: "MsSQL",
      icon: "/images/technologies/microsoft_sql_server_480px.svg",
      tech_type: "Database",
      description: "I design my graduation project (BSC in computer sience) with Microsoft SQL Server, the experience was great, and I have used it to build many apps.",
      skill_level: 7},{
      name: "MySql",
      icon: "/images/technologies/MySQL_Logo_96px.svg",
      tech_type: "Database",
      description: "I love working with relational databases and MySql is one of the most popular relational database out there.",
      skill_level: 9},{
      name: "RSpec",
      icon: "/images/technologies/rspec.svg",
      tech_type: "Test",
      description: "Rspec is the most popular testing framework for Ruby, I have used it to test many apps, and I'm still learning new things every day.",
      skill_level: 8},{
      name: "Capybara",
      icon: "/images/technologies/capybara.svg",
      tech_type: "Test",
      description: "Capybara is the most popular testing framework for Ruby, I have used it to test many apps, and I'm still learning new things every day.",
      skill_level: 8},{
      name: "Jest",
      icon: "/images/technologies/jest.svg",
      tech_type: "Test",
      description: "Jest is the most popular testing framework for JavaScript, I have used it to test many apps, and I'm still learning new things every day.",
      skill_level: 8},{
      name: "React Test Library",
      icon: "/images/technologies/react_test_library.svg",
      tech_type: "Test",
      description: "React Test Library is the most popular testing framework for React, I have used it to test many apps, and I'm still learning new things every day.",
      skill_level: 9}
    ]);

Project.create([{
    name: "Yellow Room",
    title: "An online hotel room reservation app",
    description: "This is an online hotel room reservation app. We give it a fancy name of 'yellow room'
      It's a fully functioning app with a backend setup in Rails and provides token base authentication.",
    desktop_pic: "/images/pictures/project-snapshots/PNG/Yellow-Room.png",
    mobile_pic: "/images/pictures/project-snapshots/PNG/card/Yellow-Room.png",
    live_link: "https://yellow-rooms.netlify.app/",
    source_code: "https://github.com/Tadesse-Alemayehu/YellowRooms-Front",
    technologies: [
       Technology.find_by(name: "JavaScript"),
       Technology.find_by(name: "ReactJS"),
       Technology.find_by(name: "Redux"),
       Technology.find_by(name: "Ruby"),
       Technology.find_by(name: "Ruby on Rails"),
       Technology.find_by(name: "PostgreSQL"),
       Technology.find_by(name: "RSpec"),
       Technology.find_by(name: "Capybara")]
  },
  {
    name: "I Spend",
    title: "A mobile web application where you can manage your budget",
    description: "a mobile web application where you can manage your budget: you have a list of transactions
      associated with a category, so that you can see how much money you spent and on what.",
    desktop_pic: "/images/pictures/project-snapshots/PNG/I-Spend.png",
    mobile_pic: "/images/pictures/project-snapshots/PNG/card/I-Spend.png",
    live_link: "https://quiet-beach-52239.herokuapp.com/",
    source_code: "https://github.com/Tadesse-Alemayehu/I-spend",
    technologies: [
       Technology.find_by(name: "Ruby"),
       Technology.find_by(name: "Ruby on Rails"),
       Technology.find_by(name: "PostgreSQL"),
       Technology.find_by(name: "RSpec"),
       Technology.find_by(name: "Capybara")]
  },{
    name: "My weather",
    title: "Check any city for a weather info",
    description: "This app enables users to get instant Information regarding weather conditions.
      If you share your location, it will fetch the top 10 cities near you and all the weather detail for each.
      You can also search for any city in the world and get the detail. It makes use of 3 different APIs. To fetch data, map coordinates,
      and locate your area and cities near you.",
    desktop_pic: "/images/pictures/project-snapshots/PNG/My-weather.png",
    mobile_pic:  "/images/pictures/project-snapshots/PNG/card/My-weather.png",
    live_link: "https://my-city-weather-app.netlify.app/",
    source_code: "https://github.com/Tadesse-Alemayehu/My-weather",
    technologies: [
       Technology.find_by(name: "JavaScript"),
       Technology.find_by(name: "ReactJS"),
       Technology.find_by(name: "Redux"),
       Technology.find_by(name: "Jest"),
       Technology.find_by(name: "React Test Library")]
  },{
    name: "Book Store",
    title: "Store and track your favorite books",
    description: 'The Bookstore is a website similar to the "Awesome Books" website. Here we will create an MVP version of it that allows you to:
      Display a list of books, Add a book and Remove a selected book.',
    desktop_pic: "/images/pictures/project-snapshots/PNG/book-store.png",
    mobile_pic:  "/images/pictures/project-snapshots/PNG/card/book-store.png",
    live_link: "https://tadesse-bookstore.netlify.app/",
    source_code: "https://github.com/Tadesse-Alemayehu/Bookstore",    technologies: [
       Technology.find_by(name: "JavaScript"),
       Technology.find_by(name: "ReactJS"),
       Technology.find_by(name: "Redux"),
       Technology.find_by(name: "Jest"),]
  },{
    name: "Space Travelers Hub",
    title: "work with the real live data from the SpaceX API.",
    description: "In this task, we will be working with the real live data from the SpaceX API.
      Our task is to build a web application for a company that provides commercial and scientific space travel services.
      The application will allow users to book rockets and join selected space missions.",
    desktop_pic: "/images/pictures/project-snapshots/PNG/space-travel.png",
    mobile_pic:  "/images/pictures/project-snapshots/PNG/card/space-travel.png",
    live_link: "https://tadesse-jorge-space-travelers.netlify.app/",
    source_code: "https://github.com/Tadesse-Alemayehu/Space-Travelers",    technologies: [
       Technology.find_by(name: "JavaScript"),
       Technology.find_by(name: "ReactJS"),
       Technology.find_by(name: "Redux"),
       Technology.find_by(name: "Jest"),
       Technology.find_by(name: "React Test Library")]
  }]);


Certification.create!([
  {title: "MongoDB",
    description: "I have learnt the fundamental concept behind NoSql. Including connecting to a MongoDB database, how to conduct simple CRUD operations, and key topics such as aggregation, indexing, data modeling, and transactions.",
    from: "MongoDB University",
    picture_hash: "L9QJ[m}y5$$ut7f6t7oe0cx9VtWY",
    image: "/certifications/mongodb.jpg",
    link: "https://university.mongodb.com/course_completion/4f7bfb40-7afa-4299-937a-bed4a416f35f"
  },
  {title: "Comprehensive Ruby Programming",
    description: "This course becomes one of my comprehensive Ruby coding guide. Starting with the foundational principles such as syntax and scaling up to advanced topics like MetaProgramming and Big data analysis",
    from: "Udemy",
    picture_hash: "L9QJ[m}y5$$ut7f6t7oe0cx9VtWY",
    image: "/certifications/Comprehensive-Ruby-Programming-udemy.jpg",
    link: "https://udemy-certificate.s3.amazonaws.com/image/UC-f1caac68-990e-494e-bdbc-920198758557.jpg"
  },
  {title: "Ruby on Rails",
    description: "Students earn this credential upon demonstrating mastery of Ruby on Rails by building multiple real-world Rails applications alongside software developers from all over the world.",
    from: "Microverse",
    picture_hash: "L9QJ[m}y5$$ut7f6t7oe0cx9VtWY",
    image: "/certifications/Ruby-on-Rails-microverse.png",
    link: "https://www.credential.net/06ece38f-b526-475c-8d33-f4a6af71dc05"
  },
  {title: "Ruby/Databases",
    description: "Students earn this credential after demonstrating thorough and complete understanding of Ruby and databases by building multiple projects while collaborating and pair programming remotely with developers across the world.",
    from: "Microverse",
    picture_hash: "L9QJ[m}y5$$ut7f6t7oe0cx9VtWY",
    image: "/certifications/Ruby-Databases-microverse.png",
    link: "https://www.credential.net/55251571-eed4-4538-9bc7-2c33ac3f67d4"
  },
  {title: "Front End Development Libraries",
    description: "I have learnt how to style my site quickly with Bootstrap. I also learnt how to add logic to my CSS styles and extend them with Sass. Later, I have built a shopping cart and other applications to learn how to create powerful Single Page Applications (SPAs) with React and Redux.",
    from: "FreeCodeCamp",
    picture_hash: "L9QJ[m}y5$$ut7f6t7oe0cx9VtWY",
    image: "/certifications/Front-End-Development-Libraries-freecodecamp.png",
    link: "https://www.freecodecamp.org/certification/tadesse-alemayehu/front-end-development-libraries"
  },
  {title: "JavaScript (Intermediate)",
    description: "I have learnt how to use JavaScript to manipulate web pages and create dynamic content. I also learnt how to use JavaScript to create interactive web pages and applications.",
    from: "HackerRank",
    picture_hash: "L9QJ[m}y5$$ut7f6t7oe0cx9VtWY",
    image: "/certifications/JavaScript-Intermediate-hackerRank.png",
    link: "https://www.hackerrank.com/certificates/dd15744ddc11"
  },
  {title: "React & Redux",
    description: "Students earn this credential after demonstrating thorough understanding and mastery of React and Redux. Over the course of this module, students build and develop multiple projects using React and Redux, working both independently and while remotely pair-programming.",
    from: "Microverse",
    picture_hash: "L9QJ[m}y5$$ut7f6t7oe0cx9VtWY",
    image: "/certifications/React-and-Redux-microverse.png",
    link: "https://www.credential.net/93362c5b-2013-45a9-98da-7c05d2ed0b47"
  },
  {title: "React (Basic)",
    description: "I have learnt how to use React to create interactive web pages and applications. I also learnt how to use React to create Single Page Applications (SPAs).",
    from: "HackerRank",
    picture_hash: "L9QJ[m}y5$$ut7f6t7oe0cx9VtWY",
    image: "/certifications/React-Basic-hackerRank.png",
    link: "https://www.hackerrank.com/certificates/11321bb89a70"
  },
  {title: "JavaScript",
    description: "Students earn this credential after demonstrating understanding and mastery of JavaScript. During the course of this module, they build several projects using JavaScript while pair-programming remotely with an international team of software developers.",
    from: "Microverse",
    picture_hash: "L9QJ[m}y5$$ut7f6t7oe0cx9VtWY",
    image: "/certifications/JavaScript-microverse.png",
    link: "https://www.credential.net/c57edc97-05ce-4235-bf7b-df8eb62f45ac"
  },
  {title: "JavaScript (Basic)",
    description: "I have learnt how to use JavaScript to manipulate web pages and create dynamic content. I also learnt how to use JavaScript to create interactive web pages and applications.",
    from: "HackerRank",
    picture_hash: "L9QJ[m}y5$$ut7f6t7oe0cx9VtWY",
    image: "/certifications/JavaScript-Basic-hackerRank.png",
    link: "https://www.hackerrank.com/certificates/62f1ea7d49fb"
  },
  {title: "HTML/CSS",
    description: "Students earn this credential after demonstrating industry standard HTML and CSS skills, achieved working on remote pair programming with teams from around the world.",
    from: "Microverse",
    picture_hash: "L9QJ[m}y5$$ut7f6t7oe0cx9VtWY",
    image: "/certifications/HTML-CSS-Redux-microverse.png",
    link: "https://www.credential.net/55162051-4476-4ba3-b1bc-011bc5f09651"
  },
  {title: "Problem Solving (Basic)",
    description: "I have solve solved data structures and algorithms problems using JavaScript. I have learn the fundamental concepts of data structures and algorithms, and how to apply them to solve real-world problems.",
    from: "HackerRank",
    picture_hash: "L9QJ[m}y5$$ut7f6t7oe0cx9VtWY",
    image: "/certifications/Problem-Solving-Basic-hackerRank.png",
    link: "https://www.hackerrank.com/certificates/fea59d345786"
  },
  {title: "JavaScript Algorithms and Data Structures",
    description: "I have learned fundamental programming concepts in JavaScript. I have started with basic data structures like numbers and strings. Then I also learn to work with arrays, objects, functions, loops, and more.",
    from: "FreeCodeCamp",
    picture_hash: "L9QJ[m}y5$$ut7f6t7oe0cx9VtWY",
    image: "/certifications/JavaScript-Algorithms-and-Data-Structures-freecodecamp.png",
    link: "https://www.freecodecamp.org/certification/tadesse-alemayehu/javascript-algorithms-and-data-structures"
  },
  {title: "Responsive Web Design",
    description: " I have learnt how to make web pages look good on all devices (desktops, tablets, and phones). I also learnt how to write media queries to apply different CSS styles for different screen sizes.",
    from: "FreeCodeCamp",
    picture_hash: "L9QJ[m}y5$$ut7f6t7oe0cx9VtWY",
    image: "/certifications/Responsive-W0eb-Design-freecodecamp.png",
    link: "https://www.freecodecamp.org/certification/tadesse-alemayehu/responsive-web-design"
  },
  {title: "Certificate of appreciation",
    description: "I developed a web application with a complex database design that Helps the government manage the flow of faremaciuticals in the country",
    from: "Bahir Dar University",
    picture_hash: "L9QJ[m}y5$$ut7f6t7oe0cx9VtWY",
    image: "/certifications/Certificate-of-appreciation-BDU.jpg",
    link: "https://www.linkedin.com/in/tadesse-alemayehu-full-stack-developer/overlay/education/796941109/multiple-media-viewer/?treasuryMediaId=1635506505774"
  }
]);

Testimony.create([
  {
    name: "Oshane Creary",
    title: "Software Engineer",
    image: "/testimonials/Oshane.jpeg",
    testimony: "Tadesse has all the qualities and skill set of a world class Full Stack Web Developer. Very proficient in writing clean and functional code. He is also a excellent communicator, great professional and extremely knowledgeable about programming. The projects he has worked on and built are really impressive and amazing.",
    email: "orlando.199creary@gmail.com",
    linkedin: "https://www.linkedin.com/in/ocreary/",
    twitter: "https://twitter.com/ocrearyy",
    github: "https://github.com/ocrearyy",
  },{
    name: "Henry Nawrocki Sztanski",
    title: "Ruby Full Stack Developer at BairesDev",
    image: "/testimonials/Henry-Nawrocki-Sztanski.jpeg",
    testimony: "I had the pleasure to work and code with Tadesse. He is not only a great web developer but also a great team member that will help you go through challenging situations.
Tadesse is constantly exploring new technologies and has a great skill set that makes him one of the best web developers to work with.
He will always find a way to solve a problem; he is persistent and is someone you can trust.",
    email: "henry@sztanski.com",
    linkedin: "https://www.linkedin.com/in/henry-nawrocki/",
    twitter: "https://twitter.com/hsztanski",
    github: "https://github.com/hsztan",
  },{
    name: "Selase Dewu ",
    title: "Full-Stack Web Developer",
    image: "/testimonials/Selase-Dewu.jpeg",
    testimony: "I have had the pleasure of studying and working with Tadesse. In my estimation, Tadesse ranks amongst the top 10% of software developers I know. He has an excellent analytical mind, readily applying his skills and knowledge to new tasks and issues.

He possesses excellent written and verbal communication skills and a natural ability to motivate and lead others. I can attest to his ability to solve challenges efficiently, and you can trust him to deliver on schedule.

If you need a software developer to help move your team from point A to B, make Tadesse the choice. He is an individual I would readily accept on my team without reservation. I highly recommend him.",
    email: "dewslyse@gmail.com",
    linkedin: "https://www.linkedin.com/in/selase-dewu/",
    twitter: "",
    github: "https://github.com/dewslyse",
  },{
    name: "Aaron Keegan",
    title: "Full-stack developer",
    image: "/testimonials/Aaron-Keegan.jpeg",
    testimony: "I personally recommend Tadesse for any project or team in need of a good Developer. Beyond his coding skills, I have found that Tadesse holds a high level of skill with many needed soft-skills a good team member should have. A few of those skills are communication, teamwork, and collaboration.

When needed, Tadesse had always taken opportunities to educate his peers when they are struggling. Tadesse is a natural mentor and loves to share his experiences with new coding techniques. I find that Tadesse is very active in contributing to the online community of developers and he is a great person to talk to which makes him very easy to work with.

Any team would be lucky to have Tadesse working with them.",
    email: "akeegan.dev@gmail.com",
    linkedin: "https://www.linkedin.com/in/akeegandev/",
    twitter: "https://twitter.com/AkeeganDev",
    github: "https://github.com/AKeeganDev",
  },{
    name: "Augusto Galindo Ali",
    title: "Full-Stack Developer",
    image: "/testimonials/Augusto-Galindo-Ali.jpeg",
    testimony: "Tadesse is a very knowledgeable guy, he was able to come up with solutions to tough challenges very quickly and explained it in an understandable way to his partners. Also, he is always willing to help someone stuck. I would love to work with him again.",
    email: "augusto.galindo.9@icloud.com",
    linkedin: "https://www.linkedin.com/in/augustogalindo/",
    twitter: "",
    github: "https://github.com/jsug9",
  },{
    name: "Afam Ifeanyi (chrys) Malieze",
    title: "Full-Stack Developer",
    image: "/testimonials/Afam-Ifeanyi-Malieze.jpeg",
    testimony: "Tadesse Alemayehu is a highly motivated, focused, result-driven Software Developer who is open to learning and willing to teach. I have reviewed some of his projects and find that he has depth in his insight into solving complex problems in a subtle and simplistic manner. I highly recommend him as a team member who can be relied upon and someone who is up to the task when it comes to working collaboratively and dealing with various challenges in any industry he finds himself in.",
    email: "afam_ifeanyi@live.com",
    linkedin: "https://www.linkedin.com/in/afam-chrys/",
    twitter: "https://twitter.com/afam_ifeanyi",
    github: "https://github.com/chrystalme",
  },{
    name: "Have Samuel Kabareebe",
    title: "Full Stack Software Developer",
    image: "/testimonials/Have-Samuel-Kabareebe.jpeg",
    testimony: "During our journey at Microverse, we work as a team, Tadesse is one reliable teammate that you are very sure that any blockers are seen through. He empowers you while you are working and makes you want to always move ahead of the tasks on the table, Any company hiring will be unlucky if they missed him.",
    email: "samiehave9@gmail.com",
    linkedin: "https://www.linkedin.com/in/have-samuel/",
    twitter: "https://twitter.com/samhave",
    github: "https://github.com/Have-Samuel",
  },
]);
