class WelcomeController < ApplicationController
  def index
    @facade = WelcomeFacade.new(params[:ingredient])
  end
end
