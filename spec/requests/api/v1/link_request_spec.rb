require "rails_helper"

describe "create link" do
  it "should be a success" do
    post "/api/v1/links", link: { url: "http://google.com"}

    expect(response.status).to eq(201)
  end
end
