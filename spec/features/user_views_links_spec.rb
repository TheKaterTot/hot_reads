require "rails_helper"

feature "user views hot links" do
  scenario "links are listed by popularity" do
    Fabricate.times(12, :link)
    Fabricate(:link, url: "http://google2.com")
    Fabricate(:link, url: "http://google2.com")
    Fabricate(:link, url: "http://google2.com")
    Fabricate(:link, url: "http://google3.com")
    Fabricate(:link, url: "http://google3.com")

    visit root_path

    links = all('li').map { |li| li.text }

    expect(links[0]).to eq("http://google2.com")
    expect(links[1]).to eq("http://google3.com")
  end
end
