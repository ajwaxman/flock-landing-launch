require 'rubygems' # not necessary with ruby 1.9 but included for completeness
require 'twilio-ruby'

class Twilio < ApplicationController  

  attr_accessible :number

  ## Twilio Account Info

  if Rails.env.development?
    account_sid = 'AC3dbe5936e567d442b4f6700ea22ddd10'
    auth_token = '8cd1d5bbc32d4a54721969eda0913fe6'
  elsif Rails.ev.production?
    account_sid = 'AC4e73e3a1546d3c406c0d0dda8f1deb65'
    auth_token = 'f3350a4011144f67f2aabd5d4ea24165'
  end

  # set up a client to talk to the Twilio REST API
  @client = Twilio::REST::Client.new account_sid, auth_token

  def send_text
    @client.account.sms.messages.create(
      :from => '+16465024533',
      :to => '+16105557069',
      :body => 'Download Flock and do more together: http://bit.ly/11LgLAn'
    ) 
  end

end
