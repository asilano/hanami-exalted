# spec/requests/characters/index_spec.rb

RSpec.describe "GET /characters", type: [:request, :database] do
  let(:characters) { app["persistence.rom"].relations[:characters] }

  before do
    characters.insert(name: "Silent Glade", exaltation: "Solar")
    characters.insert(name: "Tepet Asilano", exaltation: "Dragon-Blooded")
  end

  it "returns a list of characters" do
    get "/characters"

    expect(last_response).to be_successful
    expect(last_response.content_type).to eq("text/html; charset=utf-8")

    expect(last_response.body).to have_css("li:first-child .name", text: "Silent Glade")
    expect(last_response.body).to have_css("li:first-child .exaltation", text: "Solar")
    expect(last_response.body).to have_css("li:nth-child(2) .name", text: "Tepet Asilano")
    expect(last_response.body).to have_css("li:nth-child(2) .exaltation", text: "Dragon-Blooded")
  end
end
