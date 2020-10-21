Boss.delete_all
Henchman.delete_all
PlanHenchman.delete_all
Plan.delete_all

dr_evil = Boss.create(name: "Dr. Evil", title: "Universal Evil Doer")
darth_vader = Boss.create(name: "Darth Vader", title: "Takerdown of the Universe")
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


oddjobs_job = PlanHenchman.find_or_create_by(plan_id: steal_moon.id, henchman_id: oddjob.id)
cerberus_job = PlanHenchman.find_or_create_by(plan_id: destroy_nyc.id, henchman_id: cerberus.id)
number3_job = PlanHenchman.find_or_create_by(plan_id: rob_gotham_city.id, henchman_id: number3.id)


binding.pry