require 'rubygems'
require 'restclient'
require 'json'

class TypeFrontException < Exception; end

class TypeFront
  VERSION = '0.1.0'
  DOMAIN = 'http://typefront.local:3000'

  def initialize(email, password)
    @default_options = {
      :user => email,
      :password => password,
      :content_type => :json,
      :accept => :json,
      :headers => { :user_agent => "typefront-ruby/#{VERSION}" }
    }
    @resource = RestClient::Resource.new("#{DOMAIN}", @default_options)
  end

  def fonts
    get('/fonts.json')
  end

  def font_details(font_id)
    get("/fonts/#{font_id}.json")
  end

  def upload_font(file)
    post('/fonts.json', :font => { :original => file })
  end

  def remove_font(font_id)
    delete("/fonts/#{font_id}.json")
  end

  def add_domain(font_id, domain)
    post("/fonts/#{font_id}/domains.json", :domain => { :domain => domain })
  end

  def remove_domain(font_id, domain_id)
    delete("/fonts/#{font_id}/domains/#{domain_id}.json")
  end

  private

  def method_missing(name, *args)
    if [:get, :post, :delete].include?(name)
      send(:send_request, name, args[0], args[1] ? args[1] : {})
    else
      super
    end
  end

  def send_request(method, subpath = nil, options = {})
    response = @resource[subpath].send(method, options)
    JSON.parse(response)
  end
end
