# /spec/features/home_spec.rb
require 'rails_helper'

describe "Create place scenario", type: :feature do
  context "Go to home page", js: true do
    it "opens homepage" do
      admin = FactoryBot.create(:user)
      expect(admin.first_name).to eql "Yuser"
    end
  end
end
