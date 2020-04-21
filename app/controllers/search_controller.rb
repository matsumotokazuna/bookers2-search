class SearchController < ApplicationController
    def search
        @word = params[:search_word]
        @target = params[:search_target]
        @method = params[:search_method]
        if @target == "user"
            @users = User.search(@word,@method)
        else
            @books = Book.search(@word,@method)
        end
    end 
end
