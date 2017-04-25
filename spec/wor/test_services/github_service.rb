require 'wor/requests/base'
require 'wor/requests/request_error'
require 'wor/requests/version'
require 'logger'

class GithubService < Wor::Requests::Base
  def repositories(username)
    get(
      attempting_to: "get repositories of #{username}",
      path: "/users/#{username}/repos"
    )
  rescue Wor::Requests::RequestError => e
    puts e.message
  end

  protected

  def base_url
    'https://api.github.com'
  end
end
