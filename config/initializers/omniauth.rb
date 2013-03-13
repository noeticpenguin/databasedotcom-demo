Rails.application.config.middleware.use OmniAuth::Builder do
  #provider :github, ENV['OMNIAUTH_PROVIDER_KEY'], ENV['OMNIAUTH_PROVIDER_SECRET']
  provider :salesforce, 
           ENV['DATABASEDOTCOM_CLIENT_ID'], 
           ENV['DATABASEDOTCOM_CLIENT_SECRET']
           # :callback_path => '/auth/salesforce/callback'
  provider OmniAuth::Strategies::SalesforceSandbox, 
           ENV['SALESFORCE_SANDBOX_KEY'], 
           ENV['SALESFORCE_SANDBOX_SECRET']
  provider OmniAuth::Strategies::SalesforcePreRelease, 
           ENV['SALESFORCE_PRERELEASE_KEY'], 
           ENV['SALESFORCE_PRERELEASE_SECRET']
  provider OmniAuth::Strategies::DatabaseDotCom, 
           ENV['DATABASEDOTCOM_CLIENT_ID'], 
           ENV['DATABASEDOTCOM_CLIENT_SECRET']
end
