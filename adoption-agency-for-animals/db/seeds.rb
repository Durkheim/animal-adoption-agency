tall = User.create(username: "moneytalllikejordan8753", email:"moneytalllikejordan8753@gmail.com", password: "moneyistall")
short = User.create(username: "moneyshortlikerumplestillskein", email:"moneyshortlikerumplestillskein@gmail.com", password: "moneyisshort")

dog = Species.create(name: "Dog")
cat = Species.create(name: "Cat")

pitbull = dog.breeds.create(name: "Pitbull")
labrador = dog.breeds.create(name: "Labrador")

siamese = cat.breeds.create(name: "Siamese")
calico = cat.breeds.create(name: "Calico")

north_dakota = State.create(name: "North Dakota")
minnesota = State.create(name: "Minnesota")

piper_the_dog = Animal.create(name: "Piper", breed: pitbull, state: north_dakota, owner: tall)
skipper_the_dog = Animal.create(name: "Skipper", breed: labrador, state: minnesota, owner: short)
lucky_the_cat = Animal.create(name: "Lucky", breed: siamese, state: north_dakota, owner: tall)
sphinx_the_cat = Animal.create(name: "Sphinx", breed: calico, state: minnesota, owner: short)

pipers_post = Post.create(title: "Peppy Piper", body: "You want this dog? Meet me at the 35th and Sox stop. I'll be wearing red. Piper is 20 lb. 7 oz. and a real joy. I'm trying to make payments on my house. This dog is expensive.")
skippers_post = Post.create(title: "Put a Skip in Your Step with Skipper", body: "Skipper is a really, really great dog and friend. Can't say enough nice things. Truly. Not enough. What's there to say?")
luckys_post = Post.create(title: "Luck Out with Lucky the Cat", body: "Best decision of my life...finding a new home for this cat. Looking for someone to love Lucky the way I did at one time. I'm dead inside.")
sphinx_post = Post.create(title: "Explore Ancient Egypt, Sight-See with the Sphinx", body: "This cat is actually based in Minnesota. Don't let the title fool you.")

piper_the_dog.post = pipers_post
skipper_the_dog.post = skippers_post
lucky_the_cat.post = luckys_post
sphinx_the_cat.post = sphinx_post




