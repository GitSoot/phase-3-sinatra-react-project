puts "🌱 Seeding spices..."

# Categories
Category.create(name: "Personal")
Category.create(name: "Work")

# Notes
personal_category = Category.find_by(name: "Personal")
work_category = Category.find_by(name: "Work")

Note.create(title: "Buy groceries", body: "Milk, eggs, bread", category: personal_category)
Note.create(title: "Book flight", body: "Flight to New York on June 15", category: personal_category)
Note.create(title: "Meeting with clients", body: "Discuss project requirements", category: work_category)
Note.create(title: "Submit report", body: "Monthly sales report due on Friday", category: work_category)


puts "✅ Done seeding!"