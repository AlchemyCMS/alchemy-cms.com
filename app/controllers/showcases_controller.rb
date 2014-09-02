class ShowcasesController < ApplicationController

  def index
    @showcases = Showcase.all.order('title ASC').page(params[:page] || 1).per(8)
  end

  def new
    @showcase = Showcase.new
  end

  def create
    @showcase = Showcase.new(showcase_params)

    if @showcase.save
      ShowcasesMailer.registration(@showcase).deliver
      redirect_to showcases_path, notice: 'Showcase was successfully created.'
    else
      render action: 'new'
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def showcase_params
    params.require(:showcase).permit(:title, :url, :creator, :description, :screenshot, :retained_screenshot)
  end
end
