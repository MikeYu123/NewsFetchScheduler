load File.expand_path('../../../FetchNews/rbc_parser.rb',__FILE__)

class RbcWorker
  include Sidekiq::Worker
  def perform
    RbcParser.fetch_feed
  end
end
