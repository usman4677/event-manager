class GoogleController < ApplicationController
  def index
    client = Signet::OAuth2::Client.new(client_options)

    redirect_to client.authorization_uri.to_s , allow_other_host: true
  end

  def callback
    client = Signet::OAuth2::Client.new(client_options)
    client.code = params[:code]

    response = client.fetch_access_token!

    session[:authorization] = response
    redirect_to events_path,  notice: "Google has been integrated."
  end
end
