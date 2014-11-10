# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

bobby = User.create(:first_name => 'Bobby', :last_name => 'Carpenter', :email => 'bcarpenter@ups.edu', :password => 'chuck', :role => 'participant')
sally = User.create(:first_name => 'Sally', :last_name => 'Winthrop', :email => 'swinthrop@ups.edu', :password => 'wendy', :role => 'researcher')   	  
robin = User.create(:first_name => 'Robin', :last_name => 'Dorn', :email => 'rdorn@ups.edu', :password => 'password', :role => 'admin')
no_studies = User.create(:first_name => 'Damon', :last_name => 'Templeton', :email => 'da', :password => 'password', :role => 'participant')

db_study = Study.create(:title => 'Test Study', :description => 'Can we make this database work? Can we access the data?', :max_participants => 40);
desert_study = Study.create(:title => 'Desert Study', :description => 'How many humps does a camel have?', :max_participants => 150);
ocean_study = Study.create(:title => 'Ocean Study', :description => 'Dolphins and things', :max_participants => 2);

sally.created_studies << desert_study

db_time1 = Studytime.create(:datetime => DateTime.parse('9 Nov 2014 18:30:00'))
desert_time1 = Studytime.create(:datetime => DateTime.parse('9 Nov 2014 17:30:00'))
desert_time2 = Studytime.create(:datetime => DateTime.parse('9 Nov 2014 15:30:00'))
ocean_time1 = Studytime.create(:datetime => DateTime.parse('9 Nov 2014 15:30:00'))

db_study.studytimes << db_time1
desert_study.studytimes << desert_time1
desert_study.studytimes << desert_time2
ocean_study.studytimes << ocean_time1

bobby.studytimes << db_time1
bobby.studytimes << desert_time2

sally.studytimes << desert_time1
sally.studytimes << ocean_time1