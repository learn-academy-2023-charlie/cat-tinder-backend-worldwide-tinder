require 'rails_helper'

RSpec.describe Country, type: :model do
  
  it "should validate name" do
    country = Country.create(
      name: nil,
      age: 247,
      hobby: "Riding horses",
      image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fpixabay.com%2Fphotos%2Feagle-portrait-wild-bird-nature-2045655%2F&psig=AOvVaw3azmHJCkoS2FowtZsGKfKi&ust=1686089265040000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCPCyiZCSrf8CFQAAAAAdAAAAABAD"
    ) 
    expect(country.errors[:name]).to_not be_empty
  end

  it "should validate age" do
    country = Country.create(
      name: 'Will',
      age: nil,
      hobby: "Riding horses",
      image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fpixabay.com%2Fphotos%2Feagle-portrait-wild-bird-nature-2045655%2F&psig=AOvVaw3azmHJCkoS2FowtZsGKfKi&ust=1686089265040000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCPCyiZCSrf8CFQAAAAAdAAAAABAD"
    ) 
    expect(country.errors[:age]).to_not be_empty
  end

  it "should validate hobby" do
    country = Country.create(
      name: 'Will',
      age: 247,
      hobby: nil,
      image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fpixabay.com%2Fphotos%2Feagle-portrait-wild-bird-nature-2045655%2F&psig=AOvVaw3azmHJCkoS2FowtZsGKfKi&ust=1686089265040000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCPCyiZCSrf8CFQAAAAAdAAAAABAD"
    ) 
    expect(country.errors[:hobby]).to_not be_empty
  end

  it "should validate image" do
    country = Country.create(
      name: 'Will',
      age: 247,
      hobby: "Riding horses",
      image: nil
    ) 
    expect(country.errors[:image]).to_not be_empty
  end

  it "should validate hobby character length be atleast 10" do
    country = Country.create(
      name: 'Will',
      age: 247,
      hobby: "drinks",
      image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fpixabay.com%2Fphotos%2Feagle-portrait-wild-bird-nature-2045655%2F&psig=AOvVaw3azmHJCkoS2FowtZsGKfKi&ust=1686089265040000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCPCyiZCSrf8CFQAAAAAdAAAAABAD"
    ) 
    expect(country.errors[:hobby]).to_not be_empty
  end
end
