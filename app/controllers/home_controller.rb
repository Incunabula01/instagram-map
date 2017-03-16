class HomeController < ApplicationController
  def index
  	@instagram = Instagram.user_recent_media( 27899527, {:count => 9} )
  end
end
