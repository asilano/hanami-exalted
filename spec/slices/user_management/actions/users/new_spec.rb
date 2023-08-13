# frozen_string_literal: true

RSpec.describe UserManagement::Actions::Users::New do
  let(:params) { Hash[] }

  it "works" do
    response = subject.call(params)
    expect(response).to be_successful
  end
end
