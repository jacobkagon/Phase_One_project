Boss.delete_all
Henchman.delete_all
PlanHenchman.delete_all
Plan.delete_all

dr_evil = Boss.create(name: "Dr. Evil", title: "Universal Evil Doer")
darth_vader = Boss.create(name: "Darth Vader", title: "Destroyer of the Universe")
ursula = Boss.create(name: "Ursula", title: "Sinker of Sailor Ships")
gru = Boss.create(name: "Gru", title: "Vanquisher of All Using Yellow Minions")

puts ""
puts "Henchmen"
oddjob = Henchman.find_or_create_by(name: "Oddjob", specialty: "Hat Throwing")
minime = Henchman.find_or_create_by(name: "Mini Me", specialty: "Ninja Karate Chopper")
number2 = Henchman.find_or_create_by(name: "Number 2", specialty: "Sticking to the Plan")
number3 = Henchman.find_or_create_by(name: "Number 3", specialty: "Being Superior to Number 2")
frau_farissina = Henchman.find_or_create_by(name: "Frau Farissina", specialty: "Attack & Defense")
cerberus = Henchman.find_or_create_by(name:"Cerberus", specialty:"Three-Headed echo bark")
mc_mobster = Henchman.find_or_create_by(name: "Mc Mobster", specialty: "Makes all join his Mob")
hamburglar = Henchman.find_or_create_by(name: "Hamburglar", specialty: "Burger Stealing")
bob_the_goon = Henchman.find_or_create_by(name: "Bob the Goon", specialty: "Expert sidekick of annihilation")
medusa = Henchman.find_or_create_by(name:"Medusa", specialty: "Turns all into stone")
cerberus = Henchman.find_or_create_by(name:"Cerberus", specialty:"Three-Headed echo bark")

puts ""
puts "Plan"
pp
steal_moon = Plan.find_or_create_by(boss_id: dr_evil.id, job: "Hold the world hostage for $1 million")
rob_gotham_city = Plan.find_or_create_by(boss_id: dr_evil.id, job: "Rob every bank of Gotham City")
destroy_nyc = Plan.find_or_create_by(boss_id: darth_vader.id, job: "Unleash Cerberus to destory all of NYC!")
hamburglar_heist = Plan.find_or_create_by(boss_id: gru.id, job: "Steal all the McDouble Burgers")
medusa_freeze_dance = Plan.find_or_create_by(boss_id: ursula.id, job: "Freeze all the humans of earth to stone!")
jennifers_body = Plan.find_or_create_by(boss_id: mc_mobster.id, job: "Kill all brother's of enemy's Mob.")
batmans_evil_twin = Plan.find_or_create_by(boss_id: darth_vader.id, job: "Help Batman's evil twin take down League City")
annihilate_austin_powers = Plan.find_or_create_by(boss_id: dr_evil.id, job: "Squash Austin Powers like the bug he is.")
drown_london = Plan.find_or_create_by(boss_id: gru.id, job: "Drown Londson is a pot of boiling spaghetti with spicy marinara sauce")
destroy_number2 = Plan.find_or_create_by(boss_id: dr_evil.id, job: "Kill number 2, get the job done!")
set_unddead_sirens_free = Plan.find_or_create_by(boss_id: ursula.id, job: "Set undead sirens free upon the beaches of Florida")

oddjobs_job = PlanHenchman.find_or_create_by(plan_id: steal_moon.id, henchman_id: oddjob.id)
cerberus_job = PlanHenchman.find_or_create_by(plan_id: destroy_nyc.id, henchman_id: cerberus.id)
number3_job = PlanHenchman.find_or_create_by(plan_id: rob_gotham_city.id, henchman_id: number3.id)
hamburglar_job = PlanHenchman.find_or_create_by(plan_id: hamburglar_heist.id, henchman_id: hamburglar.id)
medusa_job = PlanHenchman.find_or_create_by(plan_id: medusa_freeze_dance.id, henchman_id: medusa.id)
frau_farissina_job = PlanHenchman.find_or_create_by(plan_id: jennifers_body.id, henchman_id: frau_farissina.id)
bob_the_goon_job = PlanHenchman.find_or_create_by(plan_id: batmans_evil_twin.id, henchman_id: bob_the_goon.id)
number2_job = PlanHenchman.find_or_create_by(plan_id: annihilate_austin_powers.id, henchman_id: number2.id)
cerberus_job_2 = PlanHenchman.find_or_create_by(plan_id: drown_london.id, henchman_id: cerberus.id)
number3_job_2 = PlanHenchman.find_or_create_by(plan_id: destroy_number2.id, henchman_id: number3.id)
medusa_job_2 = PlanHenchman.find_or_create_by(plan_id: set_unddead_sirens_free.id, henchman_id: medusa.id)




binding.pry