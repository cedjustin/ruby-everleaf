require 'rails_helper'
RSpec.describe Task, type: :model do

  it "Validation does not pass if the start date is empty" do
    task = Task.new(start_date: '', end_date: '1/2/2020', status: 'pending')
    expect(task).not_to be_valid
  end

  it "Validation does not pass if the end date is empty" do
    task = Task.new(start_date: '1/2/2020', end_date: '', status: 'pending')
    expect(task).not_to be_valid
  end

  it "validation passes If content is described in title and content" do
    task = Task.new(start_date: '1/1/2020', end_date: '1/2/2020', status: 'pending')
    expect(task).to be_valid
  end

end