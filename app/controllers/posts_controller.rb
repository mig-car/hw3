class PostsController < ApplicationController

    def index
        
    end

    def show
        @post = Post.find_by({ "id" => params["id"] })
    end 

    def new
        @post = Post.new
        @place = Place.find_by({ "id" => params["place_id"] })
        #@post["place_id"] = @place["id"]
    end

    def create
        @post = Post.new

        @post.save
        redirect_to "/places/#{@post["place_id"]}"

    end

end
