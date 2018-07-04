class PagesController < ApplicationController
    def index
        @pages = Page.all                       # Page.all is a method to call in the database, store in an instances variable to be access
    end
end
