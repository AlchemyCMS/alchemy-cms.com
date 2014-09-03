module ApplicationHelper
  def footer_page
    @footer_page ||= Alchemy::Page.find_by(page_layout: 'footer', language_id: session[:alchemy_language_id])
  end

  def showcases_page
    @showcases_page ||= Alchemy::Page.find_by(page_layout: 'showcases', language_id: session[:alchemy_language_id])
  end
end
