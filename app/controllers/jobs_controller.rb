class JobsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def create
        @job = Job.new(job_params)
        
        if @job.save
            render 'jobs/create'
        end
    end

    def show
        @job = Job.find_by_id(params[:id])
        render 'jobs/index'
    end

    def index
        @job = Job.all 
        render 'jobs/index'
    end

    private
        def job_params
            params.require(:job)
        end

end
