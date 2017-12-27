class GithubController < ApplicationController

  def create
    login = params[:github_login]
    github_account, auth_token = OctoKitHandlerService.new.login(login[:email], login[:password])
    current_user.profile = Profile.first_or_create(user: current_user,
                                                   username: github_account.login,
                                                   github_id: github_account.id,
                                                   github_token: auth_token.token)
    if current_user.save!
      flash[:notice] = 'Successfuly authorized your github account.'
      redirect_to root_path
    else
      flash[:error] = 'Error authenticating github account.'
      redirect_to root_path
    end
  end

  def repositories
    @repos = OctoKitHandlerService.new.repos(current_user.profile.github_token)
  end

end
