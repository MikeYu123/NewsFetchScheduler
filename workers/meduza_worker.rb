load File.expand_path('../../../FetchNews/meduza_parser.rb',__FILE__)

class MeduzaWorker
  include Sidekiq::Worker
  def perform
    MeduzaParser.fetch_feed
  end
end
