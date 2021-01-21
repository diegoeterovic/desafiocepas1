require 'rails_helper'

RSpec.describe Strain, type: :model do
  it "is not valid without an name" do
    strain = Strain.new(name: "")
    expect(strain).to_not be_valid
  end


  it "is not valid with name nill" do
    strain = Strain.new(name: nill)
      expect(strain).to_not be_valid
  end


  it "is not valid wit name Carmenere" do
    strain = Strain.new(name: "Carmenere")
    expect(strain).to_not be_valid
  end
end
