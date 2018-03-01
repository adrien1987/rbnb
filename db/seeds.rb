User.destroy_all
puts "start of users  seed"
jane = User.create!(email: "jane_tc@gmail.com", password: "pick1brain", firstname: "Jane", lastname: "Colin", photo: "logo.png", is_teacher: false)
luc = User.create!(email: "luc_tc@gmail.com", password: "pick1brain", firstname: "Luc", lastname: "Dano", photo: "logo.png", is_teacher: false)
jacques = User.create!(email: "jacques_tc@gmail.com", password: "pick1brain", firstname: "jacques", lastname: "Beauvard", photo: "logo.png", is_teacher: false)
paul = User.create!(email: "paul_tc@gmail.com", password: "pick1brain", firstname: "Paul", lastname: "Croix", photo: "logo.png", is_teacher: false)
adrien = User.create!(email: "adrien_tc@gmail.com", password: "pick1brain", firstname: "Adrien", lastname: "Rodet", photo: "logo.png", is_teacher: true)
david = User.create!(email: "david_tc@gmail.com", password: "pick1brain", firstname: "David", lastname: "Bodet", photo: "logo.png", is_teacher: true)
robert = User.create!(email: "robert_tc@gmail.com", password: "pick1brain", firstname: "Robert", lastname: "Gela", photo: "logo.png", is_teacher: true)
edouard = User.create!(email: "edouard_tc@gmail.com", password: "pick1brain", firstname: "Edouard", lastname: "Martoni", photo: "logo.png", is_teacher: true)
joseph = User.create!(email: "joseph_tc@gmail.com", password: "pick1brain", firstname: "Joseph", lastname: "Badinter", photo: "logo.png", is_teacher: true)
anne = User.create!(email: "anne_tc@gmail.com", password: "pick1brain", firstname: "Anne", lastname: "Melies", photo: "logo.png", is_teacher: true)
sophie = User.create!(email: "sophie_tc@gmail.com", password: "pick1brain", firstname: "Sophie", lastname: "Daunat", photo: "logo.png", is_teacher: true)
joan = User.create!(email: "joan_tc@gmail.com", password: "pick1brain", firstname: "Joan", lastname: "Vola", photo: "logo.png", is_teacher: true)
ben = User.create!(email: "ben_tc@gmail.com", password: "pick1brain", firstname: "Ben", lastname: "Ambertin", photo: "logo.png", is_teacher: true)
aurelie = User.create!(email: "aurelie_tc@gmail.com", password: "pick1brain", firstname: "Aurelie", lastname: "Tauri", photo: "logo.png", is_teacher: true)
mathieu = User.create!(email: "mathieu_tc@gmail.com", password: "pick1brain", firstname: "Mathieu", lastname: "Chiraqui", photo: "logo.png", is_teacher: true)
lazare = User.create!(email: "lazare_tc@gmail.com", password: "pick1brain", firstname: "Lazare", lastname: "Resti", photo: "logo.png", is_teacher: true)
print "users: "
p User.all
puts "End of users seed"

Category.destroy_all
puts "start of category seed"
science = Category.create!(name: "Science", photo: "science.jpg")
art = Category.create!(name: "Art", photo: "art.jpg")
business = Category.create!(name: "Business", photo: "business.jpg")
economie = Category.create!(name: "Economie", photo: "economie.jpg")
philosophie = Category.create!(name: "Philosophie", photo: "philosophie.png")
histoire = Category.create!(name: "Histoire", photo: "histoire.jpg")
print "categories: "
p Category.all
puts "End of category seed"

Teacher.destroy_all
puts "start of teacher seed"
teacher1 = Teacher.create!(profession: "Astro-physicien", description: "astro physicien de génie", hourly_price_cents: 100,
  user: adrien, category: science)
teacher2 = Teacher.create!(profession: "Mathématicien", description: "10 ans de recherches en mathématiques", hourly_price_cents: 50,
  user: david, category: science)
teacher3 = Teacher.create!(profession: "Chercheur en mécanique quantique", description: "Découvrez l'atome avec moi", hourly_price_cents: 80,
  user: robert, category: science)

teacher4 = Teacher.create!(profession: "Curateur de musée", description: "Doctorat et 12 ans d'expérience dans le domaine de l'art", hourly_price_cents: 40,
  user: edouard, category: art)
teacher5 = Teacher.create!(profession: "Professeur en littérature ancienne", description: "Enseignant à la Sorbonne depuis 20 ans", hourly_price_cents: 50,
  user: joseph, category: art)
teacher6 = Teacher.create!(profession: "Critique littéraire", description: "Journaliste dans le monde de l'art, je vous fais découvrir la plus belle littérature", hourly_price_cents: 100,
  user: anne, category: art)

teacher7 = Teacher.create!(profession: "Expert comptable", description: "Décryptons ensemble vos documents comptables", hourly_price_cents: 100,
  user: sophie, category: business)
teacher8 = Teacher.create!(profession: "CEO", description: "Deenez plus performants", hourly_price_cents: 200,
  user: joan, category: business)
teacher9 = Teacher.create!(profession: "Chef de projet", description: "Des projets réussis grace à mon expérience en gestion de projets", hourly_price_cents: 80,
  user: ben, category: business)

teacher10 = Teacher.create!(profession: "Professeur chercheur en économie", description: "L'économie n'aura plus de secrets pour vous", hourly_price_cents: 120,
  user: aurelie, category: economie)
teacher11 = Teacher.create!(profession: "Consultant en think tank", description: "La politique d'aujourd'hui", hourly_price_cents: 90,
  user: mathieu, category: economie)

teacher12 = Teacher.create!(profession: "Ecrivain", description: "Discutons des plus belles oeuvres de littérature européenne", hourly_price_cents: 60,
  user: lazare, category: philosophie)

print "teacher: "
p Teacher.all
puts "End of teacher seed"

Meeting.destroy_all
puts "start of meeting  seed"
meeting1 = Meeting.create!(status: "A confirmer", date: Time.new(2018,03,06, 18, 30, 00), duration: 2, city: "Paris",
  zipcode: "75014",  address: "4 rue Alesia", description: "Discussion enflammée sur les voyages intersidéraux ", teacher: teacher1, user: jane)
meeting1_1 = Meeting.create!(status: "Terminé", date: Time.new(2018,03,06, 18, 30, 00), duration: 2, city: "Paris",
  zipcode: "75014",  address: "4 rue Alesia", description: "Discussion sur l porte des étoiles ", teacher: teacher1, user: paul)
meeting1_2 = Meeting.create!(status: "Terminé", date: Time.new(2018,03,06, 18, 30, 00), duration: 2, city: "Paris",
  zipcode: "75014",  address: "4 rue Alesia", description: "Discussion sur les voyages dans le temps", teacher: teacher1, user: luc)

meeting2 = Meeting.create!(status: "Terminé", date: Time.new(2018,01,06, 11, 25, 00), duration: 3, city: "Paris",
  zipcode: "75009",  address: "10 rue La Fayette", description: "Lecture et échanges : Décrypter les mystères du boson de higgs", teacher: teacher3, user: jane)
meeting3 = Meeting.create!(status: "Confirmé", date: Time.new(2018,04,06, 18, 30, 00), duration: 1, city: "Paris",
  zipcode: "75017",  address: "18 place de clichy", description: "Visites : Les secrets du musée d'Orsay", teacher: teacher4, user: luc)
meeting4 = Meeting.create!(status: "Terminé", date: Time.new(2018,02,06, 17, 00, 00), duration: 4, city: "Paris",
  zipcode: "75001",  address: "22 rue de l'opéra", description: "Discussion : La légende arthurienne du Moyen Age à nos jours", teacher: teacher5, user: luc)
meeting5 = Meeting.create!(status: "finished", date: Time.new(2018,03,10, 19, 00, 00), duration: 2, city: "Paris",
  zipcode: "75002",  address: "1 boulevard des Italiens", description: "La performance à travers la gestions des talents", teacher: teacher8, user: jacques)
meeting6 = Meeting.create!(status: "Terminé", date: Time.new(2018,03,06, 14, 30, 00), duration: 3, city: "Paris",
  zipcode: "75017",  address: "4 rue Nollet", description: "La méthodologie lean en pratique", teacher: teacher9, user: jacques)
meeting7 = Meeting.create!(status: "Annulé", date: Time.new(2018,02,04, 11, 25, 00), duration: 4, city: "Paris",
  zipcode: "75018",  address: "3 rue de Clignancourt", description: "Débat : comment réduire la dette de la sécurité sociale", teacher: teacher11, user: paul)
meeting8 = Meeting.create!(status: "Terminé", date: Time.new(2018,01,06, 18, 00, 00), duration: 2, city: "Paris",
  zipcode: "75010",  address: "2 rue de crimée", description: "Thème : Spinoza, les nihilistes ont toujours torts", teacher: teacher12, user: paul)
print "meetings : "
p Meeting.all
puts "End of meeting seed"

Review.destroy_all
puts "start of review seed"
review1 = Review.create!(note: 4, content: "La meilleure expérience de ma vie", meeting: meeting1)
review1_1 = Review.create!(note: 5, content: "Superbe esprit, je recommande", meeting: meeting1_1)
review1_2 = Review.create!(note: 4, content: "Cette rencontre a changé ma vie", meeting: meeting1_2)
review2 = Review.create!(note: 5, content: "Superbes échanges: Que de nouvelles choses apprises !", meeting: meeting2)
review3 = Review.create!(note: 3, content: "Correcte sans plus", meeting: meeting3)
review4 = Review.create!(note: 4, content: "Que de temps gagner grace à cette intervention", meeting: meeting4)
review4 = Review.create!(note: 5, content: "Je me sens plus intelligents", meeting: meeting5)
review5 = Review.create!(note: 4, content: "Super rencontre, échanges axées sur la pratique", meeting: meeting6)
review6 = Review.create!(note: 5, content: "Tres bonne intervention, je recommande", meeting: meeting7)
review7 = Review.create!(note: 5, content: "Si mes profs de fac avaient été comme lui", meeting: meeting8)
# review8 = Review.create!(note: 4, content: "Que de temps gagner grace à cette intervention", meeting: meeting6)
# review4 = Review.create!(note: 5, content: "Je me sens plus intelligents", meeting: meeting8)

print "reviews : "
p Review.all
puts "End of review seed"
