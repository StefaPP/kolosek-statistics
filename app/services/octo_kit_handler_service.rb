class OctoKitHandlerService
  def login(username, password)
    begin
      client = Octokit::Client.new(login: username, password: password)
      auth_token = client.create_authorization(:note => 'kolosek-statistics-token')
      [client.user, auth_token]
    rescue Exception => ex
      Rails.logger.error ex.message
      Rails.logger.error ex.backtrace.join("\n")
    end

  end

  def repos(token)
    client = Octokit::Client.new(:access_token => token)

    client.list_repos
  end


  def pulls(token, repo)
    client = Octokit::Client.new(:access_token => token)
    client.pulls(repo.full_name)
  end

  def pull_request_reviews(token, repo, pull_request_id)
    client = Octokit::Client.new(:access_token => token)

    client.pull_request_reviews(repo, pull_request_id)
  end

  def pull_request_review_comments(token, repo, number, review)
    client = Octokit::Client.new(:access_token => token)

    client.pull_request_review_comments(repo, number, review)
  end

  def pull_request_commits(token, repo, number)
    client = Octokit::Client.new(:access_token => token)

    client.pull_request_commits(repo, number)
  end

  def pull_request_files(token, repo, number)
    client = Octokit::Client.new(:access_token => token)

    client.pull_request_files(repo, number)
  end

  def combined_status(token, repo, ref)
    client = Octokit::Client.new(:access_token => token)

    client.combined_status(repo, ref)
  end

end
