class Api::V1::ProjectsController < ApplicationController
  def index
    render json: Project.all, status: 200
  end
  def show
    # p project_param
    project=Project.find(params[:id])
    if project
      render json: project.as_json
    else
      render json: {"message": "No project is found with #{project_param} id", status: 404},
      :status => :bad_request
    end
  end

  private
  # def project_param
  #   params.require(:project).permit(:id)
  # end
end
