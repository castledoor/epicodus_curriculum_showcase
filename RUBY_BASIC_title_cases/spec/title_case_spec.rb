require 'rspec'
require 'title_case'

describe 'title_case' do 
  it "capitalizes the first letter of any word" do
    title_case("rats").should eq("Rats")
  end
  it "capitalize the first and second word in a title" do
    title_case("bug's life").should eq("Bug's Life")
  end
  it "does not capitalize articles and subcoordinating clauses in the middle of a title" do
    title_case("gone with the wind").should eq("Gone with the Wind")
  end
  it "returns the correct title case even if input is all caps" do
    title_case("GONE WITH THE WIND").should eq("Gone with the Wind")
  end 
  it "capitalize the first word starting with an article or a subcoordinating clause" do
  title_case("the cat in the hat").should eq("The Cat in the Hat")
   end
end