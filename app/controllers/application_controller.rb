class ApplicationController < ActionController::Base

  def after_sign_in_path_for(resource)
    events_path
  end

  private
  def client_options
    {
      client_id: '22830747960-l9o57dsjd226d0lber1ku7v9k8cvg7sp.apps.googleusercontent.com',
      client_secret: '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',
      authorization_uri: 'https://accounts.google.com/o/oauth2/auth',
      token_credential_uri: 'https://accounts.google.com/o/oauth2/token',
      scope: Google::Apis::CalendarV3::AUTH_CALENDAR,
      redirect_uri: callback_url
    }
  end
end
