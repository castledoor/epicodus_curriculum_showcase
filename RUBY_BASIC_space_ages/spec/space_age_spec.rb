require 'rspec'
require 'space_age'

describe 'space_age' do
  it "calculates minutes to seconds" do 
    space_age_minutes_to_seconds(2).should eq (120)
  end
  it "calculates minutes to seconds" do 
    space_age_minutes_to_seconds(1.5).should eq (90)
  end
  it "calculates minutes to milliseconds" do
    space_age_minutes_to_milliseconds(2).should eq (2000)
  end
  it "calculates seconds to days on earth" do
    space_age_seconds_to_days(86400).should eq(1)
  end 
  it "calculates seconds to days on earth" do
    space_age_seconds_to_days(86400).should eq(1)
  end
  it "calculates days to years on earth" do
    space_age_days_to_years(600.0).should eq(1.643835616438356)
  end
  it "tells you how old you would be on earth if you were 1031 million seconds old" do
    space_age_seconds_to_years(1031000000000).should eq (32670)
  end  
end 
