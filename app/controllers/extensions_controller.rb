class ExtensionsController < ApplicationController
  helper 'Alchemy::Pages'
  before_filter :load_extension, only: [:show]
  before_filter :load_alchemy_root_page

  def index
    @extensions = Extension.scoped
    if params[:keyword]
      @extensions = @extensions.tagged_with(params[:keyword])
    end
    if params[:by]
      @extensions = @extensions.maintained_by(params[:by])
    end
    @extensions = @extensions.page(params[:page] || 1).per(5)
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
    @extension = Extension.new(params[:extension])
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
    session[:language_id] ||= Alchemy::Language.default.id
    @root_page ||= Alchemy::Page.language_root_for(session[:language_id])
  end
end
