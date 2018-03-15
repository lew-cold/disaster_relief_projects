class ProjectsController < ApplicationController
  def index
    @projects = Projects.all
  end

  def create
    @projects = Projects.new(params.require(:drelief).permit(:title, :description))

    # @article = Article.new(params[:article])

    if @projects.save
      redirect_to projects_path
    else
      render 'new'
    end
  end

  def destroy
    @projects = Projects.find(params[:id])
    @projects.destroy!
    flash[:notice] = 'Your project has been deleted'
    redirect_to projects_path
  end

  def show
    @projects = Projects.find(params[:id])
  end
end
