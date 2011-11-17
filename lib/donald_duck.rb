require 'httparty'

module DonaldDuck
  API_KEY = 'eu38x4djt9whs8lpfh1eqvv4pr0863s4kv6bqemvingfkj07ry'
    
  class Counter
    include HTTParty
    base_uri 'https://push.ducksboard.com/values/'
    
    def initialize(widget_id)
      @widget_id = widget_id
      @auth = {:username => API_KEY, :password => 'ignore'}
    end
    
    def push(value)
      options = { :body => "{\"value\": #{value}}", :basic_auth => @auth }
      self.class.post "/#{@widget_id}", options
    end
  end
end