class JobController < ApplicationController


    def create
        @job = Job.create(  url:                        params[:url],
                            employer_name:              params[:employer_name],
                            employer_description:       params[:employer_description],
                            job_title:                  params:[job_title],
                            job_description:            params[:job_description],
                            year_of_experience:         params[:year_of_experience],
                            education_requirement:      params[education_requirement],
                            industry:                   params[:industry],
                            base_salary:                params[:base_salary],
                            employment_type_id:         params[:employment_type_id]  )
    end

    def retrieve
        job_item = Job.find_by(id: params[:id])
        render json: {jobs: job_item}
    end

    def index
        all_jobs = Job.all

        render json: {index: all_jobs}
    end
end