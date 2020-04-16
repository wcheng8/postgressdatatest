class CelebritiesController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :setup_data
    
    #Show all celebrities
    def index
        # @celebrities
    end
    
    #Show a single celebrity
    def show
        @a = ""
        @celebrities.each do |celeb|
            if celeb["id"].to_i == params[:id].to_i
                @a = celeb
            end
        end
    end
    
    #Create a new celebrity
    def create
    end
    
    #Update a celebrity
    def update
    end
    
    #Remove a celebrity
    def destroy
    end

    private
    def setup_data
        session[:celebrities] = [
            {id: "1", name: "bob Lohan", notability: "Parent Trap" },
            {id: "2", name: "Adam Sandler", notability: "Big Daddy" },
            {id: "3", name: "Rob Schnider", notability: "Adam Sandler" }
        ] unless session[:celebrities]
    
        @celebrities = session[:celebrities]
    end
end
