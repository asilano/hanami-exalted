# spec/requests/characters/index_spec.rb

RSpec.describe "GET /characters", type: :request do
  it "returns a list of characters" do
    get "/characters"

    expect(last_response).to be_successful
    expect(last_response.content_type).to eq("application/json; charset=utf-8")

    response_body = JSON.parse(last_response.body)

    expect(response_body).to eq([
      { "name" => "Silent Glade" },
      { "name" => "Yeremi Pashaman" }
    ])
  end
end
