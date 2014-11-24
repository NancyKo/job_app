class JobsController < ApplicationController

def index
end

def new
	@job = Job.new 
end

def create 
	Job.create(job_params)
	# render :index
	redirect_to jobs_path
end 

private 

def job(params)
	params.require(:job).permit(:title, :description)
end
end
