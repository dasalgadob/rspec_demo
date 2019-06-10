require 'rails_helper'

RSpec.describe User, type: :model do
  it "should be able to create one with username and password" do
    user = User.create(email: "test@testing.org", password: "123456aA@")
    expect(User.count).to eq(1)
  end
  it "should not be able to create one with email wrong and password" do
    user = User.create(email: "test", password: "123456aA@")
    expect(User.count).to eq(0)
  end

  it "should not be able to create user without password" do
    user = User.create(email: "test")
    expect(User.count).to eq(0)
  end

  it "should not be able to create user without email" do
    user = User.create(password: "123456aA@")
    expect(User.count).to eq(0)
  end

  it "should not be able to create user with password with less than 6 digits" do
    user = User.create(email: "test@testing.org", password: "12345")
    expect(User.count).to eq(0)
  end

  it "should be able to create user with password with at least 6 digits" do
    user = User.create(email: "test@testing.org", password: "123456")
    expect(User.count).to eq(1)
  end
end
