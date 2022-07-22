require 'rails_helper'

RSpec.describe Event, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  subject {
    described_class.new(name: "Event",
                        description: "Lorem ipsum",
                        start: DateTime.now,
                        finish: DateTime.now + 1.week,
                        truck_id: 1,
                        venue_id: 1,
                        confirmed: true)
  }

  it "is not valid without a name" do
    subject.name = ""
    expect(subject).to_not be_valid
  end

  it "is not valid without a start attribute" do
    subject.start = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a finish attribute" do
    subject.finish = nil
    expect(subject).to_not be_valid
  end

  # it "is valid with attributes" do
  #   expect(subject).to be_valid
  # end
end
