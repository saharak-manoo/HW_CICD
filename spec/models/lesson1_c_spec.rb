require 'rails_helper'
describe "Lesson1-C CRUD Test model with FactoryBot" do
  # see more https://github.com/thoughtbot/factory_bot/wiki
  # init data
  let(:lesson1_c) do
    FactoryBot.create(:lesson1_c, {
      string_test: "Sawadde Ja",
      datetime_test: DateTime.now,
      integer_test: 12345,
      boolean_test: true
    })
  end

  let(:lesson1_c_kub) do
    FactoryBot.create(:lesson1_c, string_test: "Sawadde Kub")
  end

  before do
    lesson1_c
    lesson1_c_kub
  end

  it 'should read' do
    expect(lesson1_c.string_test).to eq "Sawadde Ja"
  end

  it 'should update' do
    # check old string_test
    expect(lesson1_c.string_test).to eq "Sawadde Ja"
    # update string_test
    lesson1_c.string_test = "Sawadde Ja 2"
    lesson1_c.save
    # check new string_test
    lesson1_c_new = Lesson1C.find(lesson1_c.id)
    expect(lesson1_c_new.string_test).to eq "Sawadde Ja 2"
  end

  it 'should can delete' do
    # check record exist
    expect(Lesson1C.find(lesson1_c.id).blank?).to be_falsey
    # delete record
    lesson1_c.destroy
    # check deleted
    expect(Lesson1C.where(id: lesson1_c.id).first.blank?).to be_truthy
  end

  it 'should read lesson1_c_kub' do
    puts lesson1_c_kub.inspect
    expect(lesson1_c_kub.string_test).to eq "Sawadde Kub"
  end

  # try to create new model and test CRUD
end
