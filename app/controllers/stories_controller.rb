class StoriesController < ApplicationController

  def index
		@story = Story.find_by_name('SitePoint Forums')
	end
	def new 
		@story = Story.new
	end
	def create
		@story = Story.new(params[:story])
		if @story.save
			flash[:notice] = 'Story submission succeeded'	
			redirect_to stories_path
		else 
			render :action => 'new'
		end
	end
end
