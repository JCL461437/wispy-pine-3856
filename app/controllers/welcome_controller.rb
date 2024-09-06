class WelcomeController < ApplicationController
  def index
    #refactor to service object
    connection = Faraday.new('https://api.nal.usda.gov') do |faraday|
      # faraday.headers['X-Api-Key'] = Rails.application.credentials.agriculture[:key]
      faraday.params['key'] = Rails.application.credentials.agriculture[:key]
      faraday.adapter Faraday.default_adapter
  end
end
