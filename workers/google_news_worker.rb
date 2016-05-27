load File.expand_path('../../../FetchNews/google_feed_runner.rb',__FILE__)
require 'sidekiq'

class GoogleNewsWorker
  include Sidekiq::Worker
  def perform(number)
    GoogleFeedRunner.run_google_feed(number.to_i)
  end
end
