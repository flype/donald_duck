require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "DonaldDuck" do
  # curl -u APIKEY:ignored -d '{"value": 783}' https://push.ducksboard.com/values/NUMERIC_ID/

  it "Counter" do
    stub_request(:post, "https://eu38x4djt9whs8lpfh1eqvv4pr0863s4kv6bqemvingfkj07ry:ignore@push.ducksboard.com/values/1200").
      with(:body => "{\"value\":50}")

    counter = DonaldDuck::Counter.new(1200)
    counter.push(50)

    WebMock.should have_requested(:post, 
      "https://eu38x4djt9whs8lpfh1eqvv4pr0863s4kv6bqemvingfkj07ry:ignore@push.ducksboard.com/values/1200").
      with(:body => "{\"value\":50}")
  end
  
  it "Timeline" do
    stub_request(:post, "https://eu38x4djt9whs8lpfh1eqvv4pr0863s4kv6bqemvingfkj07ry:ignore@push.ducksboard.com/values/1200").
      with(:body => "{\"value\":{\"content\":\"Content\",\"title\":\"Title\"}}")

    counter = DonaldDuck::Counter.new(1200)
    counter.push(:title => "Title", :content => "Content")

    WebMock.should have_requested(:post, 
      "https://eu38x4djt9whs8lpfh1eqvv4pr0863s4kv6bqemvingfkj07ry:ignore@push.ducksboard.com/values/1200").
      with(:body => "{\"value\":{\"content\":\"Content\",\"title\":\"Title\"}}")
  end
  
  it "Bar" do
    stub_request(:post, "https://eu38x4djt9whs8lpfh1eqvv4pr0863s4kv6bqemvingfkj07ry:ignore@push.ducksboard.com/values/1200").
      with(:body => "{\"value\":50}")

    counter = DonaldDuck::Bar.new(1200)
    counter.push(50)

    WebMock.should have_requested(:post, 
      "https://eu38x4djt9whs8lpfh1eqvv4pr0863s4kv6bqemvingfkj07ry:ignore@push.ducksboard.com/values/1200").
      with(:body => "{\"value\":50}")
  end
  
  it "Box" do
    stub_request(:post, "https://eu38x4djt9whs8lpfh1eqvv4pr0863s4kv6bqemvingfkj07ry:ignore@push.ducksboard.com/values/1200").
      with(:body => "{\"value\":50}")

    counter = DonaldDuck::Box.new(1200)
    counter.push(50)

    WebMock.should have_requested(:post, 
      "https://eu38x4djt9whs8lpfh1eqvv4pr0863s4kv6bqemvingfkj07ry:ignore@push.ducksboard.com/values/1200").
      with(:body => "{\"value\":50}")
  end
  
  it "Pin" do
    stub_request(:post, "https://eu38x4djt9whs8lpfh1eqvv4pr0863s4kv6bqemvingfkj07ry:ignore@push.ducksboard.com/values/1200").
      with(:body => "{\"value\":50}")

    counter = DonaldDuck::Pin.new(1200)
    counter.push(50)

    WebMock.should have_requested(:post, 
      "https://eu38x4djt9whs8lpfh1eqvv4pr0863s4kv6bqemvingfkj07ry:ignore@push.ducksboard.com/values/1200").
      with(:body => "{\"value\":50}")
  end
  
  
  it "Gauge" do
    stub_request(:post, "https://eu38x4djt9whs8lpfh1eqvv4pr0863s4kv6bqemvingfkj07ry:ignore@push.ducksboard.com/values/1200").
      with(:body => "{\"value\":50}")

    counter = DonaldDuck::Gauge.new(1200)
    counter.push(50)

    WebMock.should have_requested(:post, 
      "https://eu38x4djt9whs8lpfh1eqvv4pr0863s4kv6bqemvingfkj07ry:ignore@push.ducksboard.com/values/1200").
      with(:body => "{\"value\":50}")
  end
  
  it "Graph" do
    stub_request(:post, "https://eu38x4djt9whs8lpfh1eqvv4pr0863s4kv6bqemvingfkj07ry:ignore@push.ducksboard.com/values/1200").
      with(:body => "{\"value\":50}")

    counter = DonaldDuck::Graph.new(1200)
    counter.push(50)

    WebMock.should have_requested(:post, 
      "https://eu38x4djt9whs8lpfh1eqvv4pr0863s4kv6bqemvingfkj07ry:ignore@push.ducksboard.com/values/1200").
      with(:body => "{\"value\":50}")
  end
  
  it "Image" do
    stub_request(:post, "https://eu38x4djt9whs8lpfh1eqvv4pr0863s4kv6bqemvingfkj07ry:ignore@push.ducksboard.com/values/1200").
      with(:body => "{\"value\":{\"caption\":\"caption\",\"source\":\"image\"}}")

    counter = DonaldDuck::Counter.new(1200)
    counter.push(:source => "image", :caption => "caption")

    WebMock.should have_requested(:post, 
      "https://eu38x4djt9whs8lpfh1eqvv4pr0863s4kv6bqemvingfkj07ry:ignore@push.ducksboard.com/values/1200").
      with(:body => "{\"value\":{\"caption\":\"caption\",\"source\":\"image\"}}")
  end
  
  
end
