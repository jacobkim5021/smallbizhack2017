require 'base64'
class ResumesController < ApplicationController
  def index
    @resumes = Resume.all
  end

  def new
    @resume = Resume.new
  end

  def create
    @resume = Resume.new(resume_params)
    if @resume.save
      flash[:success] = "The resume #{@resume.name} has been uploaded."
      redirect_to resumes_path
    else
      flash[:danger] = "Resume could not be uploaded"
      render "new"
    end
  end

  def destroy
    @resume = Resume.find(params[:id])
    @resume.destroy
    flash[:danger] = "The resume #{@resume.name} has been deleted."
    redirect_to resumes_path
  end

  private
    def resume_params
      params.require(:resume).permit(:name, :user_id, :attachment)
    end
end
