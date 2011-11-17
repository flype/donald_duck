require 'httparty'
require 'json'

module DonaldDuck
  API_KEY = 'eu38x4djt9whs8lpfh1eqvv4pr0863s4kv6bqemvingfkj07ry'
  
  class ApiBase
    include HTTParty
    base_uri 'https://push.ducksboard.com/values/'
    
    def initialize(widget_id)
      @widget_id = widget_id
      @auth = {:username => API_KEY, :password => 'ignore'}
    end
        
    def options(value)
      params = { 'value' => value }.to_json
      { :body => params, :basic_auth => @auth }
    end
  end
    
  class Counter < ApiBase
    def push(value)
      self.class.post "/#{@widget_id}", options(value)
    end
  end
  
  class Timeline < ApiBase
    def push(params = {})
      raise 'incorrect params, need to include: "title"'  unless params.keys.include?('title')
      self.class.post "/#{@widget_id}", options(params)
    end
  end
  
  class Bar < ApiBase
    def push(value)
      self.class.post "/#{@widget_id}", options(value)
    end
  end
  
  class Box < ApiBase
    def push(value)
      self.class.post "/#{@widget_id}", options(value)
    end
  end
  
  class Pin < ApiBase
    def push(value)
      self.class.post "/#{@widget_id}", options(value)
    end
  end
  
  class Gauge < ApiBase
    def push(value)
      self.class.post "/#{@widget_id}", options(value)
    end
  end
  
  class Graph < ApiBase
    def push(params = {})
      self.class.post "/#{@widget_id}", options(params)
    end
  end
  
  class Image < ApiBase
    def push(params = {})
      raise 'incorrect params, need to include: "source"' unless params.keys.include?('source')
      self.class.post "/#{@widget_id}", options(params)
    end
  end
end