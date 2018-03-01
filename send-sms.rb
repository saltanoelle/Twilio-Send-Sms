require("bundler")
Bundler.require()

account_sid = ENV["ACCOUNT_SID"]
auth_token = ENV["AUTH_TOKEN"]

@client = Twilio::REST::Client.new(account_sid, auth_token)

@client.messages.create(
	to: ENV["NUMBER_1"], 
	from: "+17147056804",
	body: "Hi! How are you?") 