# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "===> create admin"
#create user admin = Directeur
admin = User.create(nom: 'SAMB', prenom:'Tonux', type_user: 1, email: 'tonux@finetech.com', age: 29, telephone: '770999826', password: 'passer12')
puts "===> create admin end : #{admin.errors.full_messages}"

Etablissement.create(libelle: 'Finetech School', adresse: 'Mermoz', telephone: '770999801', user_id: admin.id)

#create user professeur
professeur_francais = User.create(nom: 'Ba', prenom:'Birane',type_user: :professeur, email: 'prof_fr@finetech.com', age: 29, telephone: '77099980#', password: 'passer12')
professeur_math = User.create(nom: 'Diallp', prenom:'Ndiouga',type_user: :professeur, email: 'prof_math@finetech.com', age: 29, telephone: '770999802', password: 'passer12')
professeur_musique = User.create(nom: 'Ndekki', prenom:'David',type_user: :professeur, email: 'prof_musique@finetech.com', age: 29, telephone: '770999801', password: 'passer12')

#create user eleve
eleve = User.create(nom: 'Mane', prenom:'Alioune', type_user: :eleve, email: 'eleve@finetech.com', age: 29, telephone: '770999800', password: 'passer12')

Level.create(libelle: 'Terminal S', niveau: :terminal, nombre_eleve: 0, user_id: eleve.id )

Matiere.create(libelle: 'Francais', description: ' Cours de Français', coef: 2, user_id: professeur_francais.id)
Matiere.create(libelle: 'Physique Chimies', description: ' Cours de PC', coef: 4,  user_id: professeur_math.id)
Matiere.create(libelle: 'Musique', description: ' Cours de Musique', coef: 1,  user_id: professeur_musique.id)