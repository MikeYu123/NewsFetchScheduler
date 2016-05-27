load File.expand_path('../../../FetchNews/izvestia_parser.rb',__FILE__)

class IzvestiaWorker
  include Sidekiq::Worker
  def perform
    IzvestiaParser.fetch_feed
  end
end
