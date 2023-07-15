# spec/requests/characters/index_spec.rb

RSpec.describe "GET /api/characters", type: [:request, :database] do
  let(:characters) { app["persistence.rom"].relations[:characters] }

  before do
    characters.insert(name: "Silent Glade", exaltation: "Solar")
    characters.insert(name: "Tepet Asilano", exaltation: "Dragon-Blooded")
  end

  it "returns a list of characters" do
    get "/api/characters"

    expect(last_response).to be_successful
    expect(last_response.content_type).to eq("application/json; charset=utf-8")

    response_body = JSON.parse(last_response.body)

    expect(response_body).to eq({
      "characters" => [
        { "name" => "Silent Glade", "exaltation" => "Solar" },
        { "name" => "Tepet Asilano", "exaltation" => "Dragon-Blooded" }
      ]
    })
  end
end
