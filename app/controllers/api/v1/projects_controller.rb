module Api
    module V1
       class ProjectsController < ApplicationController
           
          skip_before_action :verify_authenticity_token

          respond_to :json

          def index
            respond_with Project.all
          end

          def show
            respond_with Project.find(params[:id])
          end

          def create
            respond_with Project.create(params[:project].permit(:project_name, :project_code, :has_warrant, :gate_passed,:is_capital_project, :start_date, :end_date))
          end

          def update
            respond_with Project.update(params[:id], params[:project].permit(:project_name, :project_code, :has_warrant, :gate_passed,:is_capital_project, :start_date, :end_date))
          end

          def destroy
            respond_with Project.destroy(params[:id])
          end
       end
    end    
end
