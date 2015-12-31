class WelcomeController < ApplicationController
  def index
    @lang = Language.all
    @session = session
  end
end
