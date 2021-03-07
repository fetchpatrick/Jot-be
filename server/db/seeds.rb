User.destroy_all 
Jot.destroy_all

# Users
patrick = User.create(username:"Patrick", password:"thought123")
lisa = User.create(username:"Lisa", password:"thought456")

# Thoughts
Jot.create(title:"Tuesday Morning Thoughs2", body:"Test Body 1 Tuesday Morning Thoughs", tags:"Tag1today, Tag2",user_id:lisa.id )
Jot.create(title:"Thursday Morning Thoughs 1", body:"Test Body 1 Tuesday Morning Thoughs", tags:"Tag1, Tag2today",user_id:lisa.id )
Jot.create(title:"Wednesday Morning Thoughs 2", body:"Test Body 2 Tuesday Morning Thoughs", tags:"Tag2today, Tag4",user_id:lisa.id )
Jot.create(title:"Mondahy Morning Thoughs 2", body:"Test Body 2 Tuesday Morning Thoughs", tags:"Tag2today, Tag4",user_id:lisa.id )
Jot.create(title:"Wednesday Morning Thoughs 2", body:"Test Body 2 Tuesday Morning Thoughs", tags:"Tag2today, Tag4",user_id:lisa.id )
Jot.create(title:"Wednesday Morning Thoughs 2", body:"Test Body 2 Tuesday Morning Thoughs", tags:"Tag2today, Tag4",user_id:lisa.id )
Jot.create(title:"Monday Morning Thoughs 3", body:"Test Body 3 Tuesday Morning Thoughs", tags:"Tag5, Tag6 today",user_id:patrick.id )
Jot.create(title:"Sunday Morning Thoughs 4", body:"Test Body 4 Tuesday Morning Thoughs", tags:"Tag7, TagToday",user_id:patrick.id )
Jot.create(title:"Monday MorningEvening Thoughs 4", body:"Test Body 4 Tuesday Morning Thoughs", tags:"TagTodad7, TagToday",user_id:patrick.id )
Jot.create(title:"Wedday Morning Thoughs 4", body:"Test Body xzcnmb Tuesday Morning Thoughs", tags:"TagTodad7, TagToday",user_id:patrick.id )
Jot.create(title:"Sunddsday Morning Thoughs 4", body:"Test Body 4 Tuesday Morning Thoughs", tags:"TagTodad7, TagToday",user_id:patrick.id )
Jot.create(title:"Sund678ahay Morning Thoughs 4", body:"Test Body ytu Tuesday Morning Thoughs", tags:"TagTodad7, TagToday",user_id:patrick.id )


# Confirmation
puts "DB is seeded!"