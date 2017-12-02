require 'base64'
class ResumeController < ApplicationController
  def list
    @resumes = Resume.all
  end

  def show
    @resumes = Resume.find(params[:id])
  end

  def new
    @resume = Resume.new
  end

  def create
    @resume = Resume.new(resume_params)
    if @resume.save
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def resume_params
    params.require(:resume).permit(:pdf,:id)
  end

  def delete
    Resume.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
end
