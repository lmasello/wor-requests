require_relative 'requests/base'
require_relative 'requests/request_error'
require_relative 'requests/version'
require 'logger'

module Wor
  module TestServices
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
  end
end
