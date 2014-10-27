# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

bobby = Person.new(:id => 0, :first_name => 'Bobby', :last_name => 'Carpenter-Participant', :email => 'bcarpenter@ups.edu', :password => 'chuck', :role => 'participant', :classes => [201])

sally = Person.new(:id => 1, :first_name => 'Sally', :last_name => 'Winthrop-Researcher', :email => 'swinthrop@ups.edu', :password => 'wendy', :role => 'researcher')
    	  
robin = Person.new(:id => 2, :first_name => 'Robin', :last_name => 'Dorn-Admin', :email => 'rdorn@ups.edu', :password => 'password', :role => 'admin')

robin.save
sally.save
bobby.save

study = Study.new(:id => 101, :title => 'Testing the presence of studies and people', :description => 'Can we make this database work? Can we access the data?', :max_participants => 40, :special_instructions => 'none', :date_time => ['10/18 4:00 PM'], :location => ['WEY 230'], :participants => [0], :researchers => [1])

bobby.studies = [101]
sally.create_studies = [101]

study.save
bobby.save
sally.save