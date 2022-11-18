require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  ## USER 

  get "/users" do
    users = User.all
    users.to_json(include: [:destinations, :trips])
  end

  get "/users/:id" do
    user = User.find(params[:id])
    user.to_json
  end

  post "/users" do
    user = User.create(
      full_name: params[:full_name],
      username: params[:username],
      password: params[:password]
    )
    user.to_json
  end

  ## DESTINATION

  get "/destinations" do 
    destinations = Destination.all
    destinations.to_json(include: [:users])
  end

  ## TRIP

  get "/trips" do 
    trips = Trip.all
    trips.to_json(include: [:destination, :user])
  end

  get "/trips/:id" do
    user = Trip.find(params[:id])
    user.to_json(include: [:destination, :user])
  end

  post "/trips" do 
    trip = Trip.create(
      user_id: params[:user_id],
      destination_id: params[:destination_id],
      start_date: params[:start_date],
      end_date: params[:end_date],
      trip_notes: params[:trip_notes]
    )
    trip.to_json(include: [:destination, :user])
  end

  patch '/trips/:id' do
    trip = Trip.find(params[:id])
    trip.update(
      user_id: params[:user_id],
      destination_id: params[:destination_id],
      start_date: params[:start_date],
      end_date: params[:end_date],
      trip_notes: params[:trip_notes]
    )
    trip.to_json(include: [:destination, :user])
  end

  delete '/trips/:id' do 
    trip = Trip.find(params[:id])
    trip.destroy
    trip.to_json
  end

end