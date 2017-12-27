class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def show
    @repos = OctoKitHandlerService.new.repos(current_user.profile.github_token)
    @profile = current_user.profile
  end
end
