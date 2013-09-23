class StaticPagesController < ApplicationController  

  # set up a client to talk to the Twilio REST API
  

  def send_text
    number = params[:number]
    account_sid = 'AC4e73e3a1546d3c406c0d0dda8f1deb65'
    auth_token = 'f3350a4011144f67f2aabd5d4ea24165'
    @client = Twilio::REST::Client.new account_sid, auth_token
    @client.account.sms.messages.create(
      :from => '+16465024533',
      :to => number,
      :body => 'Download Flock and do more together: flockwithme.com/app'
    ) 
    redirect_to root_path
  end

  def home
  end

  def tos
  end

  def privacy
  end

  def new
  end

end
