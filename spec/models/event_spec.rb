require 'rails_helper'

RSpec.describe Event, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  subject {
    described_class.new(name: "Event",
                        description: "Lorem ipsum",
                        date: DateTime.now,
                        start_time: DateTime.now,
                        finish_time: DateTime.now + 1.week,
                        truck_id: 1,
                        venue_id: 1,
                        confirmed: true)
  }

  it "is not valid without a name" do
    subject.name = ""
    expect(subject).to_not be_valid
  end

  it "is not valid without a start_time attribute" do
    subject.start_time = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a finish_time attribute" do
    subject.finish_time = nil
    expect(subject).to_not be_valid
  end

end
