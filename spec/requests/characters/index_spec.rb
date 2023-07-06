# spec/requests/characters/index_spec.rb

RSpec.describe "GET /characters", type: :request do
  it "returns a list of characters" do
    get "/characters"

    expect(last_response).to be_successful
    expect(last_response.content_type).to eq("text/html; charset=utf-8")

    expect(last_response.body).to have_css("li", text: "Silent Glade")
    expect(last_response.body).to have_css("li", text: "Yeremi Pashaman")
  end
end
