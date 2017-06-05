require "rails_helper"

feature "user views hot links" do
  scenario "ten links are listed" do
    Fabricate.times(10, :link)
  end
end
