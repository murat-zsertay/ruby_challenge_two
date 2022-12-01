class PasswordManager
  def initialize
    @passwords = {}
  end
  def add(service,password)
    if password.length > 7 && !!password.match(/[!@$%&]/)
       @passwords[service] = password
    else
      @passwords
    end
  end
  def services
    @passwords.keys
  end
  def password_for(service)
    @passwords[service]
    end
  attr_accessor :passwords
end
=begin

# This should create an instance of password manager
pwm = PasswordManager.new

# this should allow me to add a passwords
pwm.add("Acebook", "password123")
pwm.add("MakersBnB", "superpassword123")

# this should show me an array of all services
pwm.services

# This should retrieve the password for a service name passed in
pwm.password_for("Dropbox")
=end