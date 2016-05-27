load File.expand_path('../../../FetchNews/gazeta_ru_parser.rb',__FILE__)

class GazetaRuWorker
  include Sidekiq::Worker
  def perform
    GazetaRuParser.fetch_feed
  end
end
