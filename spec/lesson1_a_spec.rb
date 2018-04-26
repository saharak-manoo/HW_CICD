require 'rails_helper'
describe "Lesson1-A Model testing" do
  # bundle exec rspec ./spec/lesson1_a_spec.rb:6
  it 'should return plus of two number' do
    result = Lesson1A.plus(1,1)
    expect(result).to eq 2
  end
  # bundle exec rspec ./spec/lesson1_a_spec.rb:9
  it 'should return nil if input are not a number' do
    result = Lesson1A.plus(1,"1")
    expect(result).to eq nil
  end

  # try Lesson1A.divide
end
