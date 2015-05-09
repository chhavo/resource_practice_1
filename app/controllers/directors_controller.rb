class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end

  def show_details
    @director = Director.find(params[:id])
    render("show_details")
  end

  def new_form
    # @new_director = Director.new

    render("new_form")

    # @new_director.dob = params['dob']
    # @new_director.name = params['name']
    # @new_director.bio = params['bio']
    # @new_director.image_url = params['image_url']
    # @new_director.save

  end

  def create_row
    @director = Director.new
    @director.dob = params[:dob]
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]

    @director.save

    render("show_details")
  end

  def edit_form
    @director = Director.find(params[:id])
  end

  def update_row
    @director = Director.find(params[:id])

    @director.dob = params[":dob"]
    @director.name = params[":name"]
    @director.bio = params[":bio"]
    @director.image_url = params[":image_url"]

    @director.save

    render("show")
  end

  def destroy
    @director = Director.find(params[:id])

    @director.destroy
  end
end
