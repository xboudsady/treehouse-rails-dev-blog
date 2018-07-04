class PagesController < ApplicationController
    def index
        @pages = Page.all                       # Page.all is a method to call in the database, store in an instances variable to be access
    end                                         # Make sure a model exist, because we are calling Page.all
    
    def show                                    # From the #show routes
        @page = Page.find(params[:id])          # Pass this data
    end

    def new
        @page = Page.new                        # Create a new instance object
    end

    def create
        page_params = params.require(:page).permit(:title, :body, :slug)    # Pass permission of parameters
        @page = Page.new(page_params)                                       # Create an instance variable with a new Page instance
        @page.save                                                          # Save the record to database
        redirect_to @page                                                   # After submission, redirect to that new page
    end

    def edit
        @page = Page.find(params[:id])
    end

end
