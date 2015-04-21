class PlacesController < ApplicationController

	def index
		@places = Place.all
	end

	def show
		@reviews = Review.where(:placeid => params["id"]).reverse_order
		@id = params["id"]
	    @place = Place.find_by(:id => params["id"])
      if @place != nil
      	render "show"
      else
        redirect_to "/", notice: "place not found."
      end
	end

	def delete
	@place = Place.find_by(:id => params["id"])
      if @place != nil
      	@place.delete
      	redirect_to "/"
      else
        redirect_to "/", notice: "place not found."
      end
     @reviews = Review.where(:placeid => params["id"]).reverse_order
     if @reviews != nil
     	@reviews.each do |review|
     		review.delete
     	end
     end
	end

	def new
		render "new"
	end

	def create
		p = Place.new
		p[:title] = params["title"]
		p[:photo_url] = params["photo_url"]
		p[:admission_price] = params["admission_price"].to_f*100.0
		p[:description] = params["description"]
		p.save
		redirect_to "/"
	end

	def edit
		@place = Place.find_by(:id => params["id"])
		@id = params["id"]
	end

	def update
		@place = Place.find_by(:id => params["id"])
		@place[:title] = params["title"]
		@place[:photo_url] = params["photo_url"]
		@place[:admission_price] = params["admission_price"].to_f*100.0
		@place[:description] = params["description"]
		@place.save
		redirect_to "/places/#{@place[:id]}"
	end

	def review
		@reviews = Review.where(:placeid => params["id"]).reverse_order
		@place = Place.find_by(:id => params["id"])
		@rate_parts = params["Rate"]
		@rate = @rate_parts[0].to_i
		@description = params["description"]
		review = Review.new
		review[:placeid] = params["id"]
		review[:rate] = @rate
		review[:description] = @description
		review.save
		redirect_to "/places/#{@place[:id]}"
	end
end