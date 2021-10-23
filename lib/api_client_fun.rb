require 'api_client_fun/version'
require 'httparty'
require 'pry'

module ApiClientFun
  
  base_uri = 'https://blooming-savannah-20593.herokuapp.com'
  @url = "#{base_uri}\/api\/users"

  begin

  def self
      puts "Error"
  end

  def self.profile_for_name(user_name)
    users = self.user
    found_user = users["users"].detect { |company| company["name"] == "#{user_name}"}
    result = ( found_user ? found_user["profile"].transform_keys(&:to_sym) : 'error: User not found' )
  end

  def self.user
    result = self.search(@url)
  end

  rescue NoMethodError => e
    print_exception(e, true)
    rescue => e
        print_exception(e, false)
    end
  

  
  private

  def print_exception(exception, explicit)
    puts "[#{explicit ? 'EXPLICIT' : 'INEXPLICIT'}] #{exception.class}: #{exception.message}"
        puts "TEST  "+ exception.backtrace.join("\n")
  end

  def self.search(*args)
    onParty = args.count==1 ? @url: @url+"/"+"#{args[1]}"
    result = HTTParty.get(onParty)
  end
  
end
