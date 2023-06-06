require 'rails_helper'

RSpec.describe "Countries", type: :request do
  describe "GET /index" do
    it "Gets a list of all countries" do
      Country.create(
        name: 'America',
        age: 247,
        hobby: "Riding horses",
        image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fpixabay.com%2Fphotos%2Feagle-portrait-wild-bird-nature-2045655%2F&psig=AOvVaw3azmHJCkoS2FowtZsGKfKi&ust=1686089265040000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCPCyiZCSrf8CFQAAAAAdAAAAABAD"

      )
        get '/countries'
        country = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(country.length).to eq 1
    end
  end

  describe "POST /create" do
    it "creates a Country" do
      # The params we are going to send with the request
      country_params = {
        country: {
          name: 'Italy',
          age: 172,
          hobby: "Eating pasta",
          image: "https://www.google.com/url?sa=i&url=http%3A%2F%2Fwww.reidsitaly.com%2Fdestinations%2Flazio%2Frome%2Fsights%2Fcolosseum.html&psig=AOvVaw3l6nzVs38TmgvCLjSPwgxB&ust=1686089399906000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCKDXhdGSrf8CFQAAAAAdAAAAABAD"
  
        }
      }
  
      # Send the request to the server
      post '/countries', params: country_params
  
      # Assure that we get a success back
      expect(response).to have_http_status(200)
  
      # Look up the cat we expect to be created in the db
      country = Country.first
  
      # Assure that the created cat has the correct attributes
      expect(country.name).to eq 'Italy'
    end

    it "doesn't create a country without a name" do
      # The params we are going to send with the request
      country_params = {
        country: {
          name: nil,
          age: 172,
          hobby: "Eating pasta",
          image: "https://www.google.com/url?sa=i&url=http%3A%2F%2Fwww.reidsitaly.com%2Fdestinations%2Flazio%2Frome%2Fsights%2Fcolosseum.html&psig=AOvVaw3l6nzVs38TmgvCLjSPwgxB&ust=1686089399906000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCKDXhdGSrf8CFQAAAAAdAAAAABAD"
  
        }
      }
  
      # Send the request to the server
      post '/countries', params: country_params
  
      # Assure that we get a success back
      expect(response.status).to eq(422)
  
      json = JSON.parse(response.body)
  
      # Assure that the created cat has the correct attributes
      expect(json['name']).to include("can't be blank")
    end

    it "doesn't create a country without an age" do
      # The params we are going to send with the request
      country_params = {
        country: {
          name: 'Italy',
          age: nil,
          hobby: "Eating pasta",
          image: "https://www.google.com/url?sa=i&url=http%3A%2F%2Fwww.reidsitaly.com%2Fdestinations%2Flazio%2Frome%2Fsights%2Fcolosseum.html&psig=AOvVaw3l6nzVs38TmgvCLjSPwgxB&ust=1686089399906000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCKDXhdGSrf8CFQAAAAAdAAAAABAD"
  
        }
      }
  
      # Send the request to the server
      post '/countries', params: country_params
  
      # Assure that we get a success back
      expect(response.status).to eq(422)
  
      json = JSON.parse(response.body)
  
      # Assure that the created cat has the correct attributes
      expect(json['age']).to include("can't be blank")
    end

    it "doesn't create a country without an hobby" do
      # The params we are going to send with the request
      country_params = {
        country: {
          name: 'Italy',
          age: 172,
          hobby: nil,
          image: "https://www.google.com/url?sa=i&url=http%3A%2F%2Fwww.reidsitaly.com%2Fdestinations%2Flazio%2Frome%2Fsights%2Fcolosseum.html&psig=AOvVaw3l6nzVs38TmgvCLjSPwgxB&ust=1686089399906000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCKDXhdGSrf8CFQAAAAAdAAAAABAD"
  
        }
      }
  
      # Send the request to the server
      post '/countries', params: country_params
  
      # Assure that we get a success back
      expect(response.status).to eq(422)
  
      json = JSON.parse(response.body)
  
      # Assure that the created cat has the correct attributes
      expect(json['hobby']).to include("can't be blank")
    end

    it "doesn't create a country without an image" do
      # The params we are going to send with the request
      country_params = {
        country: {
          name: 'Italy',
          age: 172,
          hobby: "Eating spaghetti",
          image: nil
        }
      }
  
      # Send the request to the server
      post '/countries', params: country_params
  
      # Assure that we get a success back
      expect(response.status).to eq(422)
  
      json = JSON.parse(response.body)
  
      # Assure that the created cat has the correct attributes
      expect(json['image']).to include("can't be blank")
    end

  end
end 



