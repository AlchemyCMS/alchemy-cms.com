module ApplicationHelper
  def footer_page
    @footer_page ||= Alchemy::Page.find_by(page_layout: 'footer', language_id: session[:alchemy_language_id])
  end
end
