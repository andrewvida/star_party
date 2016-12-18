require "spec_helper"
require "star_party/adapters/macys"

describe StarParty::Adapters::Macys, :type => :feature do

  before(:each) do
    visit "https://www.macys.com"
    @subject = StarParty::Adapters::Macys.new.search_for("2439321")
  end

  it "can find the item we're searching for by WebID" do
    expect(page).to have_content("Tommy Hilfiger Men's Slim-Fit Chino Pants")
  end

  it "returns the price of the item" do
    expect(@subject).to be_kind_of Float
  end
end
