class MeasuresOfSuccessesController < ApplicationController
  def index
    @measures_of_successes = MeasuresOfSuccess.all

    render("measures_of_successes/index.html.erb")
  end

  def show
    @measures_of_success = MeasuresOfSuccess.find(params[:id])

    render("measures_of_successes/show.html.erb")
  end

  def new
    @measures_of_success = MeasuresOfSuccess.new

    render("measures_of_successes/new.html.erb")
  end

  def create
    @measures_of_success = MeasuresOfSuccess.new


    save_status = @measures_of_success.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/measures_of_successes/new", "/create_measures_of_success"
        redirect_to("/measures_of_successes")
      else
        redirect_back(:fallback_location => "/", :notice => "Measures of success created successfully.")
      end
    else
      render("measures_of_successes/new.html.erb")
    end
  end

  def edit
    @measures_of_success = MeasuresOfSuccess.find(params[:id])

    render("measures_of_successes/edit.html.erb")
  end

  def update
    @measures_of_success = MeasuresOfSuccess.find(params[:id])


    save_status = @measures_of_success.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/measures_of_successes/#{@measures_of_success.id}/edit", "/update_measures_of_success"
        redirect_to("/measures_of_successes/#{@measures_of_success.id}", :notice => "Measures of success updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Measures of success updated successfully.")
      end
    else
      render("measures_of_successes/edit.html.erb")
    end
  end

  def destroy
    @measures_of_success = MeasuresOfSuccess.find(params[:id])

    @measures_of_success.destroy

    if URI(request.referer).path == "/measures_of_successes/#{@measures_of_success.id}"
      redirect_to("/", :notice => "Measures of success deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Measures of success deleted.")
    end
  end
end
