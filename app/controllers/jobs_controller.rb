class JobsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def create
        new_job = Job.create(employer_name: params[:employer_name])

        render json:{job: new_job}
    end

    def all
       render json: Job.all 
    end

    def find
        render json: Job.find_by(id: params[:id])
    end
end
