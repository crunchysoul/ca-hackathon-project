class LandingController < ApplicationController
  def index
    if user_signed_in?
      redirect_to listings_url
    end
  end
end
