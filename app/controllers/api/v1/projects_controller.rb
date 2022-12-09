class Api::V1::ProjectsController < ApplicationController
  def index
    mapped=[]
    projects=Project.includes(:technologies)
    projects.each  do |project|
      mapped.push({project: project, technologies: project.technologies})
    end
    render json: mapped, status: 200
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

  def technologies
    technologies=Project.find_by_id(params[:project_id])&.technology_names
    if technologies
      render json: technologies
    else
      render json: {"message": "No project is found with #{params[:project_id]} id", status: 404},
      :status => :bad_request
    end
  end
  private
end
