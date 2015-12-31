class LanguageController < ApplicationController
  def set
    session[:language] = params[:id]
    redirect_to :root
  end
end
