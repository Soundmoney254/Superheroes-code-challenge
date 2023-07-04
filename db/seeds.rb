# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create heroes
heroes = [
  { name: 'Kamala Khan', super_name: 'Ms. Marvel' },
  { name: 'Doreen Green', super_name: 'Squirrel Girl' },
  { name: 'Gwen Stacy', super_name: 'Spider-Gwen' }
]

heroes.each do |hero|
  Hero.create(hero)
end

# Create powers
powers = [
  { name: 'Super Strength', description: 'Gives the wielder super-human strengths' },
  { name: 'Flight', description: 'Gives the wielder the ability to fly through the skies at supersonic speed' }
]

powers.each do |power|
  Power.create(power)
end

# Create hero powers
hero_powers = [
  { strength: 'Strong', hero_id: Hero.first.id, power_id: Power.first.id },
  { strength: 'Average', hero_id: Hero.last.id, power_id: Power.last.id }
]

hero_powers.each do |hero_power|
  HeroPower.create(hero_power)
end
