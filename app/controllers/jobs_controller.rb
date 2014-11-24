class JobsController < ApplicationController

def index
end

def new
	@job = Job.new 
end

def create 
	p "IN the create METHOD"
	Job.create(job_params)
	# render :index
	p job
	redirect_to jobs_path
end 

private 

def job_params
	params.require(:job).permit(:title, :description)
end
end
