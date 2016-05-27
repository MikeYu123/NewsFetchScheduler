load File.expand_path('../../../FetchNews/ria_parser.rb',__FILE__)

class RiaWorker
  include Sidekiq::Worker
  def perform
    RiaParser.fetch_feed
  end
end
