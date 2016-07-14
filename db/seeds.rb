# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Project.destroy_all
Reward.destroy_all


User.create(name: 'Jim Bean',
						email: 'jim_bean@gmail.com',
						password: 'test'
						)




speaker = Project.create(name: 'Long Distance Bluetooth Speaker',
							 description: 'A Bluetooth speaker that can play music from 100km away',
							 goal: 50000,
							 date: DateTime.strptime("09/09/2016 17:00", "%m/%d/%Y %H:%M"),
							 url: 'http://img.priceza.com.ph/img/product/5003004/5003004-20160421205425-365010.jpg',
							 user_id: 1
							 )

Reward.create(name: 'Sticker',
							description: 'Get a sticker for a $5 pledge',
							amountThreshold: 5,
							project_id: speaker.id
							)

Reward.create(name: 'Hat & T-Shirt',
							description: 'Get a hat for a $50 pledge',
							amountThreshold: 50,
							project_id: speaker.id
							)

Reward.create(name: '1st Prototype',
							description: 'Get the first prototype of the speaker for a $150 pledge',
							amountThreshold: 150,
							project_id: speaker.id
							)




fans = Project.create(name: 'Silent Computer Fans',
							description: 'Fans for computers and laptop that are completely silent',
							goal: 32000,
							date: DateTime.strptime("10/10/2016 14:00", "%m/%d/%Y %H:%M"),
							url: 'http://multimedia.bbycastatic.ca/multimedia/products/150x150/102/10289/10289690.jpg',
							user_id: 1
							)

Reward.create(name: 'Sticker',
							description: 'Get a sticker for a $5 pledge',
							amountThreshold: 5,
							project_id: fans.id
							)

Reward.create(name: 'Hat & T-Shirt',
							description: 'Get a hat for a $50 pledge',
							amountThreshold: 50,
							project_id: fans.id
							)

Reward.create(name: '1st Prototype',
							description: 'Get the first prototype of the speaker for a $150 pledge',
							amountThreshold: 150,
							project_id: fans.id
							)




pokemon = Project.create(name: 'Hack to use Pokemon GO in Canada',
							 description: 'Making a program that can access any app store from any country',
							 goal: 10000,
							 date: DateTime.strptime("08/09/2016 16:00", "%m/%d/%Y %H:%M"),
							 url: 'http://i2.wp.com/www.morningledger.com/wp-content/uploads/2016/07/RSZ-PG-2.jpg?resize=300%2C194',
							 user_id: 1
							 )
Reward.create(name: 'Sticker',
						 description: 'Get a sticker for a $5 pledge',
						 amountThreshold: 5,
						 project_id: pokemon.id
						 )

Reward.create(name: 'Hat & T-Shirt',
						 description: 'Get a hat for a $50 pledge',
						 amountThreshold: 50,
						 project_id: pokemon.id
						 )

Reward.create(name: '1st Prototype',
						 description: 'Get the first prototype of the speaker for a $150 pledge',
						 amountThreshold: 150,
						 project_id: pokemon.id
						 )




charger = Project.create(name: 'Wireless Phone Charger',
							description: 'Use your phone within 10 metres of this device and it will charge',
							goal: 100000,
							date: DateTime.strptime("12/12/2016 23:59", "%m/%d/%Y %H:%M"),
							url: 'http://s3.soapbox.nl/uploaded/jongemakers.nl/zh/5623-928fe06e728d563e6fe2771a349ca3e18999df63.png',
							user_id: 1
							)

Reward.create(name: 'Sticker',
							description: 'Get a sticker for a $5 pledge',
							amountThreshold: 5,
							project_id: charger.id
							)

Reward.create(name: 'Hat & T-Shirt',
							description: 'Get a hat for a $50 pledge',
							amountThreshold: 50,
							project_id: charger.id
							)

Reward.create(name: '1st Prototype',
							description: 'Get the first prototype of the speaker for a $150 pledge',
							amountThreshold: 150,
							project_id: charger.id
							)

# PROJECT 5


dog = Project.create(name: 'Newspaper Fetching Dog-Bot',
							description: 'A dog-like robot that runs outside and grabs your newspaper from the front yard',
							goal: 120000,
							date: DateTime.strptime("11/09/2016 17:00", "%m/%d/%Y %H:%M"),
							url: 'https://cdn-img-2.wanelo.com/p/62a/70e/3c7/aa174180138fa01bfd814f1/x354-q80.jpg',
							user_id: 1
							)

Reward.create(name: 'Sticker',
							description: 'Get a sticker for a $5 pledge',
							amountThreshold: 5,
							project_id: dog.id
							)

Reward.create(name: 'Hat & T-Shirt',
							description: 'Get a hat for a $50 pledge',
							amountThreshold: 50,
							project_id: dog.id
							)

Reward.create(name: '1st Prototype',
							description: 'Get the first prototype of the speaker for a $150 pledge',
							amountThreshold: 150,
							project_id: dog.id
							)
