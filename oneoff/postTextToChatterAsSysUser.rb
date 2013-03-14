require 'databasedotcom'

# The following hash is needed to initialize your client object.
# best practice would be use your own oAuth creds for your org, 
# but they're not required to be unique to your org.
client_setup = {
	:client_id => "3MVG9A2kN3Bn17htxwtfVTtm3qwpoTvCyrm7B6owHpRUWqcsV0Lyn_FvYm68KV4shObIbnal1pZTMpPFmeCI2", 
	:client_secret => '8606439080174639895',
	:version => '27.0', # I don't always use the latest version
											# of the api, but when I don't I cry.
	:debugging => true # enable this for debug data in your logs
}

# Ah yes, the sensitive bit. 
credentials = {
	:username => 'Your UserName @ awesome domain.com',
	:password => 'Yo, I heard you like Ruby so I wrote you a call back script. use your security token too. m\'kay'
	}

client = Databasedotcom::Client.new client_setup # Generate a client object.
client.authenticate credentials # And now authorize using OOB oAuth2.

# The materialize method creates an object in the ruby call chain lookup
# that is dynamically defined off of your salesforce instance's data.
# in this case we're using Opportunity, but it could just as easily be
# my_wicked_awesome_custom_object__c. Note that Ruby convention is for 
# objects to be Camel cased so my_wicked... becomes My_wicked...
# Additionally, if the custom object is part of a namespace, be sure
# to prepend the namespace dbdcdemo__my_wicked_...
client.materialize("Opportunity")
# once you've materialized an object you can "find" things.
# Note that this gem handles "missing methods" by jit creating them
# thus, find_by_custom_field_x doesn't exist as a method on the obj
# but when you call it, it's transformed into a proper soql 
# statement for sf to run. Hence find_by_Name, and find_by_LeadSource
# function as if you'd written some long ass boring soql statement.
record = Opportunity.find_by_Name("Pyramid Emergency Generators")
# Hey hey! you found your object. Better make sure you have feeds 
# enabled cause here comes the sugar.
# 
# Check this out -- This is how you get a handle on a feed for a 
# record. Note that feed related items are alway CLASS methods 
# not instance methods, and even more annoyingly, are MODULE 
# class methods. So have fun typing all that dat...::chat..::fee.. 
# stuff. Raise your hand if sublime text just makes that easy for 
# you? (raises hand.)
record_feed = Databasedotcom::Chatter::RecordFeed.find(client, record.Id)
# Remember that bit about class methods ... yeah, so just cause you've
# a handle on the record feed doesn't mean you can post directly to it.
# this is the magic here below. make sure to pass in your client obj,
# your record Id for the record (regardless of what kind it is) and
# the text, url etc. 
Databasedotcom::Chatter::RecordFeed.post(client, record.Id, :text => "This is a status update about Salesforce.", :url => "http://www.salesforce.com")

