# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

teachers = Teacher.create([
    {
        name: "Ksenia Newton", 
        subject_name: "Russian",
        image_url:"https://static.turbosquid.com/Preview/2015/09/04__17_26_23/girl01.jpga6e02d03-df13-4f39-a0b6-a16c815063e2Original.jpg",

    }, 
    {
        name: "Lindsey Lohan", 
        subject_name: "Art",
        image_url:"https://i.pinimg.com/originals/aa/77/46/aa774687ab171e5c27560f12da110e27.jpg",

    },
    {
        name: "Sam Bernard", 
        subject_name: "Biology",
        image_url:"https://taskubator.com/wp-content/uploads/2020/02/Animation.png",

    },
    {
        name: "Sara Kruz", 
        subject_name: "History",
        image_url:"https://i0.wp.com/www.animationboss.net/wp-content/uploads/2018/08/animated-short-film-dear-alice.jpg?fit=800%2C450",

    },
    {
        name: "Megan Webb", 
        subject_name: "Pschycology",
        image_url:"https://www.designyourway.net/blog/wp-content/uploads/2010/09/Best-Short-Animated-Films.jpg",

    },
    {
        name: "Mark Jackobs", 
        subject_name: "Math",
        image_url:"https://i.ytimg.com/vi/8Plphx8Yz_U/maxresdefault.jpg",

    }
])

reviews = Review.create([
    {
        title: "Amazing teacher",
        description: "She is a great teacher. I learned alot in her class", 
        score: 5, 
        teacher: teachers.first
    },
    {
        title: "Great teacher",
        description: "I learned pretty good Russian from her", 
        score: 5, 
        teacher: teachers.first
    }
])
