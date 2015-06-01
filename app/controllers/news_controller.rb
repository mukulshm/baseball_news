class NewsController < ApplicationController
  def home
    @logos = Logo.all
  end

  def reddit
    #@path = Path.find(1)
    @path = Path.where({platform_id: 1, team_id: params[:team_id].to_i}).first

    #@reddit_path = "test text"
    @reddit_path = ('subreddit:' + @path.path).to_s
    @reddit = RedditKit.search(@reddit_path, {sort:'new'})  #'subreddit:kcroyals' #.front_page


    #require 'open-uri'
    #require 'json'

    #url = "http://www.reddit.com/r/kcroyals/new.json?sort=new"
    #@parsed_data = JSON.parse(open(url).read)
  end

  def twitter
    require 'twitter'

    client = Twitter::REST::Client.new do |config|
      config.consumer_key = 'LA79n6IHNqgFmvVJJqEdvAxkO'
      config.consumer_secret = 'jt783epJs7ujkoEZDM4LUvmmLSQfy5pHIkWhIrf5q1dq0YZoFj'
      config.access_token = '962602386-MTMj3uKGcth0uvdsQjDbiqG7pNqpsEYKCS9ox0G9'
      config.access_token_secret = '3gNXC67hrv5F0Q9XMXGECYRchic4cKHp2qTl4WPlc8eZo'
    end

    @path = Path.where({platform_id: 1, team_id: params[:team_id].to_i}).first
    @twitter_path = @path.path.to_s

    @twitter = client.user_timeline(@twitter_path)  #search("to:justinbieber marry me", {result_type: "recent"})
  end
end
