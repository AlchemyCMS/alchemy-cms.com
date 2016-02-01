module Alchemy
  MessagesController.class_eval do
    require 'uri'
    require 'net/http'

    def index
      redirect_to alchemy.root_path, status: 301
    end

    def create #:nodoc:
      @message = Message.new(params[:message])
      @message.ip = request.remote_ip
      @element = Element.find_by_id(params[:message].delete(:contact_form_id))
      @page = @element.page
      @root_page = @page.get_language_root
      if @message.valid?
        post_to_sugar_crm! if !Rails.env.development?
        Messages.contact_form_confirmation_mail(@message).deliver
        Messages.contact_form_mail(@message, "support@magiclabs.de", "mail@magiclabs.de", "Inquiry for Package: #{@message.package}").deliver
      else
        render template: 'alchemy/pages/show'
      end
    end

    private

    def post_to_sugar_crm!
      uri = URI("http://crm.magicsupport.de/index.php")
      data = {
        'entryPoint' => 'WebToLeadCapture',
        'campaign_id' => '8bdf04e7-3ebf-ffe8-d372-53aea4ddb949',
        'assigned_user_id' => '1',
        'team_id' => '35606215-d5e5-4788-210b-5363e687db9c',
        'team_set_id' => 'labs',
        'req_id' => 'first_name;last_name;email1;'
      }.merge(params[:message])
      response = Net::HTTP.post_form(uri, data)
      response.body =~ /Thank You For Your Submission./ # returns true || false
    end

    def get_page; end
  end
end
