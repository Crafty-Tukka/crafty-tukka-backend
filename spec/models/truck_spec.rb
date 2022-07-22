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

  it "is not valid without a name" do
    subject.name = ""
    expect(subject).to_not be_valid
  end

  it "is not valid without a password_digest" do
    subject.password_digest = ""
    expect(subject).to_not be_valid
  end

  it "is valid without a website" do 
    subject.website = ""
    expect(subject).to be_valid
  end

  it "is valid without a google maps" do 
    subject.google_maps = ""
    expect(subject).to be_valid
  end
  
end
