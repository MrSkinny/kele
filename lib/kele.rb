require 'httparty'
require '../config/secret'

class Kele
  include HTTParty

  def initialize(username,password)
    @username = username
    @password = password
    @api_url = 'https://www.bloc.io/api/v1'
    @auth_token = self.class.post(@api_url + '/sessions', body: { email: Secrets::EMAIL, password: Secrets::PASSWORD }
  end
end
