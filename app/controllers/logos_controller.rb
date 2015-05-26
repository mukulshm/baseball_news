class LogosController < ApplicationController
  def index
    @logos = Logo.all
  end

  def show
    @logo = Logo.find(params[:id])
  end

  def new
    @logo = Logo.new
  end

  def create
    @logo = Logo.new
    @logo.path = params[:path]
    @logo.team_id = params[:team_id]

    if @logo.save
      redirect_to "/logos", :notice => "Logo created successfully."
    else
      render 'new'
    end
  end

  def edit
    @logo = Logo.find(params[:id])
  end

  def update
    @logo = Logo.find(params[:id])

    @logo.path = params[:path]
    @logo.team_id = params[:team_id]

    if @logo.save
      redirect_to "/logos", :notice => "Logo updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @logo = Logo.find(params[:id])

    @logo.destroy

    redirect_to "/logos", :notice => "Logo deleted."
  end
end
