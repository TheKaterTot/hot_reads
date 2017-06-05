require "rails_helper"

describe "create link" do
  it "should be a success" do
    post "/api/v1/links", link: { url: "http://google.com"}

    expect(response.status).to eq(201)
  end
end

describe "get top ten links" do
  it "should be a success" do
    Fabricate(:link, url: "http://google.com")
    Fabricate(:link, url: "http://no.com")

    get "/api/v1/links"

    expect(response).to be_success

    links = JSON.parse(response.body)
    expect(links.first["url"]).to eq("http://no.com")
    expect(links.last["url"]).to eq("http://google.com")
  end
end
