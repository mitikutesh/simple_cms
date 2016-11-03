class DemoController < ApplicationController
  layout false
  def index
  	#renders only hello.html.erb

  end

  def hello
  	#render('index')
    @array = [1,3,4,5]
    @id = params['id'].to_i
    @pages = params[:pages].to_i
  end
  def other_hello
  	redirect_to(:controller=>'demo', :action => 'index')
  end
  def mitiku
  	redirect_to("http://mitikuteshome.com")
  	
  end
end
