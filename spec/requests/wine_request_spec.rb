require 'rails_helper'

RSpec.describe "Wines", type: :request do
it "vista de index está mostrando vinos" do
    get :index
    expect(response).to be_succesfull
end

it "renderiza bien el template de index" do
    get :index
    expect(response).to render_template("index")
end


it "renderiza bien el template de show" do
    get :show
    expect(response).to render_template("show")
end

