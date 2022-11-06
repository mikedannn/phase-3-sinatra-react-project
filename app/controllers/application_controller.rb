class ApplicationController < Sinatra::Base
  set default_content_type: "application/json"
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  ## USER 

  get "/users" do
    users = User.all
    users.to_json
  end

  get "/users/:id" do
    user = User.find(params[:id])
    user.to_json(include: :trips)
  end

  # post "/users" do 
  #   user = User.create(
  #     full_name:
  #     username:
  #     password:
  #     date_of_birth:
  #   )
  #   user.to_json
  # end

  ## DESTINATION

  get "/destinations" do 
    destinations = Destination.all
    destinations.to_json
  end

  ## TRIP

  get "/trips" do 
    trips = Trip.all
    trips.to_json
  end

end
