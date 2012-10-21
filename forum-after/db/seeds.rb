cheese = Tenant.create! name: "Cheese", subdomain: "cheese"
chunkybacon = Tenant.create! name: "Chunky Bacon", subdomain: "chunkybacon"
default = Tenant.create! name: "Default", subdomain: ""

Tenant.current_id = cheese.id

t = Topic.create! name: "Limburger Pranks"
t.posts.create! content: "Try putting it under someone's nose when they sleep. Haha."
t.posts.create! content: "No Whey!"
t.posts.create! content: "That's a Gouda one."

t = Topic.create! name: "Four-Cheese Pizza Recipe"
t.posts.create! content: "It's delicious!"

t = Topic.create! name: "The best Cheesecake"
t.posts.create! content: "Where's the best cheesecake you've tried?"
t.posts.create! content: "I hear Ryan has a good recipe."

t = Topic.create! name: "What's your favorite cheese?"
t.posts.create! content: "What's your favorite?"

User.create! email: "foo@example.com", password: "secret"

Tenant.current_id = chunkybacon.id

t = Topic.create! name: "It's delicious!"

Tenant.current_id = default.id

t = Topic.create! name: "Use \"cheese\" or \"chunkybacon\" subdomain."
t.posts.create! content: "This is the default (blank) subdomain."
t.posts.create! content: "Setup this Rails app with Pow so you can switch the subdomain."
t.posts.create! content: "Try cheese or chunkybacon."
