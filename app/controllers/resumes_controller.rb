require 'base64'
class ResumesController < ApplicationController
  def index
    @resumes = Resume.all
  end

  def new
    @resumes = Resume.new
  end

  def create
    @resumes = Resume.new(resume_params)
    if @resumes.save
      flash[:success] = "Resume successfully uploaded"
      redirect_to :action => 'list'
    else
      flash[:danger] = "Resume could not be uploaded"
      render :action => 'new'
    end
  end

  def resume_params
    params.require(:resume).permit(:content,:name,:user_id)
  end
end
