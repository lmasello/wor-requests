# frozen_string_literal: true
RSpec.shared_context 'STUB: github_repositories', shared_context: :metadata do
  before do
    stub_request(:get, /.*repositories.*/)
  end
end
