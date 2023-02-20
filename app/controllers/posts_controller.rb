class PostsController < ApplicationController

    def index
        
    end

    def show
        @post = Post.find_by({ "id" => params["id"] })
    end 

    def new
        @post = Post.new(posted_on: Time.now)
        @place = Place.find_by({ "id" => params["place_id"] })
    end

    def create
        @post = Post.new
        @post["title"] = params["post"]["title"]
        @post["description"] = params["post"]["description"]
        @post["posted_on"] = params["post"]["posted_on"]
        @post["place_id"] = params["place_id"]
        @post.save
        redirect_to "/places/#{@post["place_id"]}"

    end

end
