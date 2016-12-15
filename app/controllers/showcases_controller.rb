class ShowcasesController < ApplicationController

  def index
    @showcases = Showcase.published.order('title ASC')
    if params[:keyword]
      @showcases = @showcases.tagged_with(params[:keyword])
    end
    @showcases = @showcases.page(params[:page] || 1).per(8)

    @keywords = Showcase.tag_counts_on(:keywords).order('count DESC, RANDOM()').limit(5)
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
    params.require(:showcase).permit(:title, :url, :creator, :creator_url, :keyword_list, :screenshot, :retained_screenshot)
  end
end
