require 'rails_helper'
describe "Lesson1-B CRUD Test model" do

  # init data
  let(:lesson1_b) do
    Lesson1B.create({
      string_test: "Sawadde Ja",
      datetime_test: DateTime.now,
      integer_test: 12345,
      boolean_test: true
    })
  end

  before do
    lesson1_b
  end

  # bundle exec rspec ./spec/models/lesson1_b_spec.rb:20
  it 'should read' do
    expect(lesson1_b.string_test).to eq "Sawadde Ja"
  end

  # bundle exec rspec ./spec/models/lesson1_b_spec.rb:24
  it 'should update' do
    # check old string_test
    expect(lesson1_b.string_test).to eq "Sawadde Ja"
    # update string_test
    lesson1_b.string_test = "Sawadde Ja 2"
    lesson1_b.save
    # check new string_test
    lesson1_b_new = Lesson1B.find(lesson1_b.id)
    expect(lesson1_b_new.string_test).to eq "Sawadde Ja 2"
  end

  # bundle exec rspec ./spec/models/lesson1_b_spec.rb:36
  it 'should can delete' do
    # check record exist
    expect(Lesson1B.find(lesson1_b.id).blank?).to be_falsey
    # delete record
    lesson1_b.destroy
    # check deleted
    expect(Lesson1B.where(id: lesson1_b.id).first.blank?).to be_truthy
  end

  # try another attribute
end
