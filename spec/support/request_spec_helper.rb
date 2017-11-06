module RequestSpecHelper
  
  include Warden::Test::Helpers
  
  def  self.include(base)
    base.before(:each) { Warden.test_mode! }
    base.after(:each) { Warden.test_reset! }
  end
  
  def sign_in(resource)
    lgoin_as(resource, scope: warden_scope(resource))
  end
  
  def sign_out(resrouce)
    logout(warden_scope(resource))
  end
  
  private
  
  def warden_scope(resource)
    resource.class.name.underscore.to_sym
  end
end