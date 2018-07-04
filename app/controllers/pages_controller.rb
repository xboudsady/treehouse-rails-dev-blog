class PagesController < ApplicationController
    def index
        @pages = Page.all                       # Page.all is a method to call in the database, store in an instances variable to be access
    end                                         # Make sure a model exist, because we are calling Page.all
    def show
        @page = Page.find(params[:id])
        render plain: @page.title
    end
end
