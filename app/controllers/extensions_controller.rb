class ExtensionsController < ApplicationController
  include Alchemy::ConfigurationMethods
  include Alchemy::AbilityHelper
  include Alchemy::ControllerActions

  before_filter :load_extension, only: [:show]
  before_filter :load_alchemy_root_page

  def index
    @extensions = Extension.published
    if params[:keyword]
      @extensions = @extensions.tagged_with(params[:keyword])
    end
    if params[:by]
      @extensions = @extensions.maintained_by(params[:by])
    end
    @extensions = @extensions.page(params[:page] || 1).per(8)

    @keywords = Extension.tag_counts_on(:keywords).order('count DESC, RANDOM()').limit(5)
  end

  def show
    @similiar_keyword = Extension.tagged_with(@extension.keywords)
    @similiar_keyword = @similiar_keyword.to_a - [@extension]

    @similiar_maintainer = Extension.maintained_by(@extension.maintainer)
    @similiar_maintainer = @similiar_maintainer.to_a - [@extension]
  end

  def new
    @extension = Extension.new
  end

  def create
    @extension = Extension.new(extension_params)
    if @extension.save
      ExtensionsMailer.registration(@extension).deliver
      redirect_to extensions_url, notice: 'Extension was successfully registered. Thank you.'
    else
      render action: "new"
    end
  end

  private

  def load_extension
    @extension = Extension.find(params[:id])
  end

  def load_alchemy_root_page
    session[:alchemy_language_id] ||= Alchemy::Language.get_default.try(:id)
    @root_page ||= Alchemy::Page.language_root_for(session[:alchemy_language_id])
  end

  def extension_params
    params.require(:extension).permit(:description, :url, :maintainer, :name, :tag_list)
  end
end
