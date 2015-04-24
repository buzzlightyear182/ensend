class HomeController < ApplicationController

  before_action :set_contact, only: [:contact]

  def static
    render 'home/static'
  end

end
