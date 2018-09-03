class Api::ParksController < ApplicationController
  
  def index
    @parks = Park.all
    render 'index.json.jbuilder'
  end 

  def create
    @park = Park.new(
                    name: params[:name],
                    state: params[:state],
                    description: params[:description]
                    )
    @park.save
    render 'show.json.jbuilder'
  end 

  def show
    @park = Park.find(params[:id])
    render 'show.json.jbuilder'
  end 

  def update
    @park = Park.find(params[:id])

    @park.name = params[:name] || @park.name
    @park.state = params[:state] || @park.state
    @park.description = params[:description] || @park.description

    @park.save
    render 'show.json.jbuilder'
  end 

  def destroy
    @park = Park.find(params[:id])
    @park.destroy

    render json: {message: "Park successfully Deleted."}
  end 
end
