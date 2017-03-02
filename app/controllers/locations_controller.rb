class LocationsController < ApplicationController

  def show
    @photo = Photo.new
    @comment = Comment.new
    @bookmark = Bookmark.new
    @location = Location.find(params[:id])

    render("locations/show.html.erb")
  end

  def new
    @location = Location.new

    render("locations/new.html.erb")
  end

  def create
    @location = Location.new

    @location.name = params[:name]
    @location.address = params[:address]
    @location.website = params[:website]
    @location.details = params[:details]
    @location.city_id = params[:city_id]
    @location.category = params[:category]

    save_status = @location.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/locations/new", "/create_location"
        redirect_to("/locations")
      else
        redirect_back(:fallback_location => "/", :notice => "Location created successfully.")
      end
    else
      render("locations/new.html.erb")
    end
  end

  def edit
    @location = Location.find(params[:id])

    render("locations/edit.html.erb")
  end

  def update
    @location = Location.find(params[:id])

    @location.name = params[:name]
    @location.address = params[:address]
    @location.website = params[:website]
    @location.details = params[:details]
    @location.city_id = params[:city_id]
    @location.category = params[:category]

    save_status = @location.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/locations/#{@location.id}/edit", "/update_location"
        redirect_to("/locations/#{@location.id}", :notice => "Location updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Location updated successfully.")
      end
    else
      render("locations/edit.html.erb")
    end
  end

  def destroy
    @location = Location.find(params[:id])

    @location.destroy

    redirect_to("locations")

  end
end
