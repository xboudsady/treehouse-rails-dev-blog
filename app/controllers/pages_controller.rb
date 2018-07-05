class PagesController < ApplicationController
    before_action :set_page, only: [:show, :edit, :update, :destroy]
    
    def index
        @pages = Page.all                       # Page.all is a method to call in the database, store in an instances variable to be access
    end                                         # Make sure a model exist, because we are calling Page.all
    
    def show                                    # From the #show routes
    end

    def new
        @page = Page.new                        # Create a new instance object
    end

    def create    
        @page = Page.new(page_params)                           # Create an instance variable with a new Page instance
        @page.save                                              # Save the record to database
        redirect_to @page                                       # After submission, redirect to that new page
    end

    def edit
    end

    def update
        @page.update(page_params)
        redirect_to @page
    end

    def destroy
        @page.destroy
        redirect_to pages_path
    end

    private

        def page_params
            params.require(:page).permit(:title, :body, :slug)      # Pass permission of parameters
        end

        def set_page
            @page = Page.find(params[:id])
        end


end
