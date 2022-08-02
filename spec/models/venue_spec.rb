require 'rails_helper'

RSpec.describe Venue, type: :model do
  subject {
    described_class.new(
      name: "Venue",
      description: " Lorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsum",
      email: "MyString",
      mobile: "1234567",
      website: "MyString",
      facebook: "MyString",
      google_maps: "MyString",
      password_digest: "MyString",
      address: "MyString")
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
