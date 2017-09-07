class TwitterApi

  def self.our_public_tweets
    client.user_timeline('BBCNews')
  end

  def self.search_our_tweets
    client.search("#ruby", result_type: "recent").take(8)
  end

  def self.client
    @client ||= Twitter::REST::Client.new do |config|
      config.consumer_key        = "8Kd2Iq0KsfKdk3QQ0aYu3mxU9"
      config.consumer_secret     = "sgG3mab0bc9V7ogJkoj22t0WztIemqQ7FFCs7ti7dzPElP2rBY"
    end
  end
end
