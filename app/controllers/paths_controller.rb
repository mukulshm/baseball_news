class PathsController < ApplicationController
  def index
    @paths = Path.all
  end

  def show
    @path = Path.find(params[:id])
  end

  def new
    @path = Path.new
  end

  def create
    @path = Path.new
    @path.path = params[:path]
    @path.platform_id = params[:platform_id]
    @path.team_id = params[:team_id]

    if @path.save
      redirect_to "/paths", :notice => "Path created successfully."
    else
      render 'new'
    end
  end

  def edit
    @path = Path.find(params[:id])
  end

  def update
    @path = Path.find(params[:id])

    @path.path = params[:path]
    @path.platform_id = params[:platform_id]
    @path.team_id = params[:team_id]

    if @path.save
      redirect_to "/paths", :notice => "Path updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @path = Path.find(params[:id])

    @path.destroy

    redirect_to "/paths", :notice => "Path deleted."
  end
end
