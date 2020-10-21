Boss.delete_all
Henchman.delete_all
PlanHenchman.delete_all
Plan.delete_all

dr_evil = Boss.create(name: "Dr. Evil", title: "Universal Evil Doer")
puts ""
puts "Henchmen"
oddjob = Henchman.find_or_create_by(name: "Oddjob", specialty: "Hat Throwing")
puts ""
puts "Plan"
pp
steal_moon = Plan.find_or_create_by(boss_id: dr_evil.id, job: "Hold the world hostage for $1 million")



oddjobs_job = PlanHenchman.find_or_create_by(plan_id: steal_moon.id, henchman_id: oddjob.id)



binding.pry