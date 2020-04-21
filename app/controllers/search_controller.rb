class SearchController < ApplicationController
    def search
        @users = User.search(params[:search])
    end 
end
