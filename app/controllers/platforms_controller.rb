class PlatformsController < ApplicationController
  def index
    @platforms = Platform.all
  end

  def show
    @platform = Platform.find(params[:id])
  end

  def new
    @platform = Platform.new
  end

  def create
    @platform = Platform.new
    @platform.name = params[:name]

    if @platform.save
      redirect_to "/platforms", :notice => "Platform created successfully."
    else
      render 'new'
    end
  end

  def edit
    @platform = Platform.find(params[:id])
  end

  def update
    @platform = Platform.find(params[:id])

    @platform.name = params[:name]

    if @platform.save
      redirect_to "/platforms", :notice => "Platform updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @platform = Platform.find(params[:id])

    @platform.destroy

    redirect_to "/platforms", :notice => "Platform deleted."
  end
end
