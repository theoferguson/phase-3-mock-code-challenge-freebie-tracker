puts "Creating companies..."
a1 = Company.create(name: "Google", founding_year: 1998)
a2 = Company.create(name: "Facebook", founding_year: 2004)
a3 = Company.create(name: "Dunder Mifflin", founding_year: 2002)
a4 = Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
b1 = Dev.create(name: "Rick")
b2 = Dev.create(name: "Morty")
b3 = Dev.create(name: "Mr. Meseeks")
b4 = Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
Freebie.create(name: "stressball", value: 2, company_id: a1.id, dev_id: b1.id)
Freebie.create(name: "pen", value: 1.50, company_id: a2.id, dev_id: b2.id)
Freebie.create(name: "notepad", value: 3, company_id: a3.id, dev_id: b3.id)
Freebie.create(name: "water bottle", value: 5, company_id: a1.id, dev_id: b1.id)
Freebie.create(name: "stressball", value: 2, company_id: a2.id, dev_id: b2.id)
Freebie.create(name: "pen", value: 1.50, company_id: a3.id, dev_id: b4.id)
Freebie.create(name: "notepad", value: 3, company_id: a1.id, dev_id: b2.id)
Freebie.create(name: "water bottle", value: 5, company_id: a2.id, dev_id: b1.id)


puts "Seeding done!"
