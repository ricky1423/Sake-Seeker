class UsersController < ApplicationController

  before_action :authenticate_user!, only: :show

  def show
    @nickname = current_user.nickname
  end

end
