require "rails_helper"

feature "user views hot links" do
  scenario "ten links are listed" do
    Fabricate.times(12, :link)

    visit root_path
    
    within(".links") do
      expect(page).to have_content("http://google1.com")
      expect(page).to_not have_content("http://google11.com")
    end
  end
end
