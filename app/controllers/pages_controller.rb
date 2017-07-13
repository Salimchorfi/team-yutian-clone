class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: 'jams#index'


  def home
  end
end
