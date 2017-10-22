module Api
    module V1
       class UsersController < ApplicationController
           
          skip_before_action :verify_authenticity_token

          respond_to :json

          def index
            respond_with User.all
          end

          def show
            #@user = User.find(params[:id])
            respond_with User.find(params[:id])
          end

          def create
            respond_with User.create(params[:user].permit(:first_name, :last_name, :email, :is_overhead,:job_title))
          end

          def update
            respond_with User.update(params[:id], params[:user].permit(:first_name, :last_name, :email, :is_overhead,:job_title))
          end

          def destroy
            respond_with User.destroy(params[:id])
          end
       end
    end    
end
