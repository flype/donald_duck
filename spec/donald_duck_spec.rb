require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "DonaldDuck" do
  # curl -u APIKEY:ignored -d '{"value": 783}' https://push.ducksboard.com/values/NUMERIC_ID/

  it "Counter" do
    stub_request(:post, "https://eu38x4djt9whs8lpfh1eqvv4pr0863s4kv6bqemvingfkj07ry:ignore@push.ducksboard.com/values/1200").
      with(:body => "{'value': 50}")

    counter = DonaldDuck::Counter.new(1200)
    counter.push(50)

    WebMock.should have_requested(:post, 
      "https://eu38x4djt9whs8lpfh1eqvv4pr0863s4kv6bqemvingfkj07ry:ignore@push.ducksboard.com/values/1200").
      with(:body => "{'value': 50}")
  end
end
