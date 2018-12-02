# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Faculty.create(id: 1, name: 'Albert', position: 'teacher', committee: 1)
Faculty.create(id: 2, name: 'Calvin', position: 'teacher', committee: )
Faculty.create(id: 3, name: 'Eugene', position: 'teacher', committee: 2)
Faculty.create(id: 4, name: 'Sidney', position: 'teacher', committee: )
Faculty.create(id: 5, name: 'Walter', position: 'teacher', committee: 3)
Faculty.create(id: 6, name: 'Integra', position: 'teacher', committee: )
Faculty.create(id: 7, name: 'Seras', position: 'teacher', committee: )
Faculty.create(id: 8, name: 'Olivia', position: 'teacher', committee: 3)
Faculty.create(id: 9, name: 'Julietta', position: 'teacher', committee: 1)
Faculty.create(id: 10, name: 'Rosalie', position: 'teacher', committee: )
Faculty.create(id: 11, name: 'Alexandrina', position: 'teacher', committee: 2)
Faculty.create(id: 12, name: 'Atticus', position: 'teacher', committee: )
Faculty.create(id: 13, name: 'Henry', position: 'teacher', committee: 2)
Faculty.create(id: 14, name: 'Rafi', position: 'teacher', committee: )
Faculty.create(id: 15, name: 'Jotham', position: 'teacher', committee: 1)

Program.create(id: 1, name: "Math",faculty: 4)
Program.create(id: 2, name: "Enginnering",faculty: 8)
Program.create(id: 3, name: "Computer Science",faculty: 12)
Program.create(id: 4, name: "Biology",faculty: 3)
Program.create(id: 5, name: 'Nursing',faculty: 6)

Administration.create(id:1 , faculty: 2,program:2)
Administration.create(id:2 , faculty: 6,program:4)
Administration.create(id:3 , faculty: 9,program:1)
Administration.create(id:4 , faculty: 11,program:3)
Administration.create(id:5 , faculty: 14,program:5)

Commmity.create(id: 1,name:"first committee")
Commmity.create(id: 2,name: "second committee")
Commmity.create(id: 3,name: "third committee")

Assesment.create(id: 1,name: "db Test", program: 3)
Assesment.create(id: 2,name: "human anatomy", program: 4)
Assesment.create(id: 3,name: "Most deadly diseases", program: 5)
Assesment.create(id: 4,name: "integrals", program: 1)
Assesment.create(id: 5,name: "Bridge", program: 2)

Document.create(id: 1, name: "Syllabus" ,path: "/")