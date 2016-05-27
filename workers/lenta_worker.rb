load File.expand_path('../../../FetchNews/lenta_parser.rb',__FILE__)

class LentaWorker
  include Sidekiq::Worker
  def perform
    LentaParser.fetch_feed
  end
end
