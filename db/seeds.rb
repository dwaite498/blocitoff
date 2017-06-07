User.create!(
    :username => "doomhammer",
    :email => "doomhammer@dhammer.com",
    :password => "hammer123"
    )
    
User.create!(
    :username => "davey222",
    :email => "dwaite498@gmail.com",
    :password => "hunter231"
    )
user = User.all
    
20.times do
    Item.create!(
        :name => Faker::Hipster.sentence(2),
        :user => user.sample
        )
    end