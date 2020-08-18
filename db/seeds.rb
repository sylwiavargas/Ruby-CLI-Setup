Traveler.destroy_all
Wish.destroy_all
Destination.destroy_all
BucketListItem.destroy_all
# Traveler.reset_pk_sequence
# Wish.reset_pk_sequence
# Destination.reset_pk_sequence
# BucketListItem.reset_pk_sequence

########### different ways to write your seeds ############
#1: save everything to variables (makes it easy to connect models, best for when you want to be intentional about your seeds)
katherine = Traveler.create(traveler_name: "Katherine", traveler_age: "29")
sayana = Traveler.create(traveler_name: "Sayana", traveler_age: "30")
michael = Traveler.create(traveler_name: "Michael", traveler_age: "35")

wish1 = Wish.create(wish_note: "To see La Tour Eiffelle", destination_id: 1)
wish2 = Wish.create(wish_note: "Climb Machu Picchu", destination_id: 2)
wish3 = Wish.create(wish_note: "Scuba Dive in the Great Barrier Reef", destination_id: 3)
wish4 = Wish.create(wish_note: "Walk on Great Wall of China", destination_id: 4)
wish5 = Wish.create(wish_note: "Hiking at Grand Canyon", destination_id: 5)
wish6 = Wish.create(wish_note: "Visit Hermitage", destination_id: 6)
wish7 = Wish.create(wish_note: "Climb the Giza Pyramid", destination_id: 7)
wish8 = Wish.create(wish_note: "Party on Ibiza", destination_id: 8)
wish9 = Wish.create(wish_note: "Dive into the Great Blue Hole", destination_id: 9)
wish10 = Wish.create(wish_note: "Catch a big fish in lake Baikal", destination_id: 10)

destination1 = Destination.create(destination_name: "Paris")
destination2 = Destination.create(destination_name: "Peru")
destination3 = Destination.create(destination_name: "Australia")
destination4 = Destination.create(destination_name: "China")
destination5 = Destination.create(destination_name: "Arizona")
destination6 = Destination.create(destination_name: "Saint Petersburg")
destination7 = Destination.create(destination_name: "Egypt")
destination8 = Destination.create(destination_name: "Spain")
destination9 = Destination.create(destination_name: "Belize")
destination10 = Destination.create(destination_name: "Russia")

bucket_list1 = BucketListItem.create(traveler_id: 1, wish_id: 1)
bucket_list2 = BucketListItem.create(traveler_id: 2, wish_id: 2)
bucket_list3 = BucketListItem.create(traveler_id: 3, wish_id: 3)




# 1: save everything to variables (makes it easy to connect models, best for when you want to be intentional about your seeds)
# basil = Plant.create(name: "basil the herb", bought: 20200610, color: "green")
# sylwia = Person.create(name: "Sylwia", free_time: "none", age: 30)
# pp1 = PlantParenthood.create(plant_id: basil.id, person_id: sylwia.id, affection: 1_000_000, favorite?: true)

# # 2. Mass create -- in order to connect them later IN SEEDS (not through the app) you'll need to find their id
# ## a. by passing an array of hashes:


# Plant.create([
#     {name: "Corn Tree", bought: 20170203, color: "green"},
#     {name: "Prayer plant", bought: 20190815, color: "purple"},
#     {name: "Cactus", bought: 20200110, color: "ugly green"}
# ])
# ## b. by interating over an array of hashes:
# plants = [{name: "Elephant bush", bought: 20180908, color: "green"},
#     {name: "Photos", bought: 20170910, color: "green"},
#     {name: "Dragon tree", bought: 20170910, color: "green"},
#     {name: "Snake plant", bought: 20170910, color: "dark green"},
#     {name: "polka dot plant", bought: 20170915, color: "pink and green"},
#     {name: "Cactus", bought: 20200517, color: "green"}]

# plants.each{|hash| Plant.create(hash)}



# # 3. Use Faker and mass create
# ## step 1: write a method that creates a person
# def create_person
#     free = ["mornings", "evenings", "always", "afternoons", "weekends", "none"].sample

#     person = Person.create(
#         name: Faker::Movies::HitchhikersGuideToTheGalaxy.character,
#         free_time: free,
#         age: rand(11...70)
#     )
# end

# ## step 2: write a method that creates a joiner
# def create_joiners(person)
#     plants_number = rand(1..4)
#     plants_number.times do 
#         PlantParenthood.create(
#             plant_id: Plant.all.sample.id, 
#             person_id: person.id, 
#             affection: rand(101), 
#             favorite?: [true, false].sample
#         )
#     end
# end

# ## step 3: invoke creating joiners by passing in an instance of a person
# 10.times do     
#     create_joiners(create_person)
#     ##### ALTERNATIVE:
#     # person = create_person
#     # create_joiners(person)
# end

# indoor = Category.create(name: "indoors")

# Plant.update(category_id: indoor.id)


# puts "🔥 🔥 🔥 🔥 "