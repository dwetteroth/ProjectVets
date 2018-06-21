class WelcomeController < ApplicationController

  def index
    @homepage = true
    require 'contentful'

    client = Contentful::Client.new(
      space: '97qxbdp2ooc5',  # This is the space ID. A space is like a project folder in Contentful terms
      access_token: '4b6729432b817a9e19746aed8d20ebfe6b8d6c2b762f74b264162bd8d1b6c2e2'  # This is the access token for this space. Normally you get both ID and the token in the Contentful web app
    )
    @hp = client.entries(content_type: 'homepage', locale: '*').first
    
  end

  def newsletter

  end
end
