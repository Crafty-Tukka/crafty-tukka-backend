require 'rails_helper'

RSpec.describe Truck, type: :model do
  subject {
    described_class.new(
      name: "Truck",
      description: "Lorem ipsum",
      email: "MyString",
      mobile: "MyString",
      website: "MyString",
      facebook: "MyString",
      google_maps: "MyString",
      password_digest: "MyString",
      category: "MyString")
  }

  it "is valid with attributes" do
    expect(subject).to be_valid
  end
  
end
