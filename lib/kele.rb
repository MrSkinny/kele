require 'httparty'

class Kele
  include HTTParty
  attr_reader :auth_token, :session

  def initialize(username,password)
    @username = username
    @password = password
    @api_url = 'https://www.bloc.io/api/v1'
    @session = self.class.post(@api_url + '/sessions', body: { email: @username, password: @password })
    @auth_token = @session["auth_token"]
  end
end
