class SearchController < ApplicationController
    def search
        @search_target = params[:search_target]
        if @search_target == "1"
            @users = User.search(params[:search])
        else
            @books = Book.search(params[:search])
        end
    end 
end
