class ResourceNeededsController < ApplicationController
  def index
    @resource_neededs = ResourceNeeded.all

    render("resource_neededs/index.html.erb")
  end

  def show
    @action_step = ActionStep.new
    @resource_needed = ResourceNeeded.find(params[:id])

    render("resource_neededs/show.html.erb")
  end

  def new
    @resource_needed = ResourceNeeded.new

    render("resource_neededs/new.html.erb")
  end

  def create
    @resource_needed = ResourceNeeded.new


    save_status = @resource_needed.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/resource_neededs/new", "/create_resource_needed"
        redirect_to("/resource_neededs")
      else
        redirect_back(:fallback_location => "/", :notice => "Resource needed created successfully.")
      end
    else
      render("resource_neededs/new.html.erb")
    end
  end

  def edit
    @resource_needed = ResourceNeeded.find(params[:id])

    render("resource_neededs/edit.html.erb")
  end

  def update
    @resource_needed = ResourceNeeded.find(params[:id])


    save_status = @resource_needed.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/resource_neededs/#{@resource_needed.id}/edit", "/update_resource_needed"
        redirect_to("/resource_neededs/#{@resource_needed.id}", :notice => "Resource needed updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Resource needed updated successfully.")
      end
    else
      render("resource_neededs/edit.html.erb")
    end
  end

  def destroy
    @resource_needed = ResourceNeeded.find(params[:id])

    @resource_needed.destroy

    if URI(request.referer).path == "/resource_neededs/#{@resource_needed.id}"
      redirect_to("/", :notice => "Resource needed deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Resource needed deleted.")
    end
  end
end
