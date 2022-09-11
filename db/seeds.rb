#puts "🌱 Seeding spices..."
Blogger.create(name: "Bernard", image:"https://t3.ftcdn.net/jpg/01/18/01/98/360_F_118019822_6CKXP6rXmVhDOzbXZlLqEM2ya4HhYzSV.jpg")
Blogpost.create(title: "Javascript", body: "Sample blog body", blogger_id:1)
Blogpost.create(title: "Javascript hoisting", body: "Sample blog body 2", blogger_id:1)


puts "✅ Done seeding!"
