
lime = Ingredient.create!(name: "lime")


lemon = Ingredient.create!(name: "lemon")


vodka = Ingredient.create!(name: "vodka")


apple = Ingredient.create!(name: "apple")


tomatto = Ingredient.create!(name: "tomatto")


bloody = Cocktail.create!(name: "Bloody Mary", image_url: Faker::LoremFlickr.image)


old_fashioned = Cocktail.create!(name: "Old Fashioned", image_url: Faker::LoremFlickr.image)


sweet_poison = Cocktail.create!(name: "Sweet Poison", image_url: Faker::LoremFlickr.image)


dose1 = Dose.create(description: "4 cl")
dose1 = Dose.create(description: "5 cl")
dose1 = Dose.create(description: "2 spoons")
dose1 = Dose.create(description: "1 cl")
dose1 = Dose.create(description: "3 cl")



