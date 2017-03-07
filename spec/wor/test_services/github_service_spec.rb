require 'spec_helper'

describe Wor::TestServices::GithubService do

  #   - get(opts = {}, &block)
  describe 'get' do
    context 'when child class is correctly defined' do
      it 'makes the request' do
        byebug
        expect(described_class.new.get('enanodr')).to have_http_status_code(:ok)
      end
    end
  end
  #   - post(opts = {}, &block)
  describe 'post' do

  end
  #   - patch(opts = {}, &block)
  describe 'patch' do

  end
  #   - put(opts = {}, &block)
  describe 'put' do

  end
  #   - delete(opts = {}, &block)
  describe 'delete' do

  end

end
