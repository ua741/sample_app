require 'spec_helper'

describe PagesController do
  render_views 
  # was not present by default
  describe "GET 'home'" do
    	it "should be successful" do
      		get 'home'
	        response.should be_success
	    end
        it "Should Have the right title" do
    	        get 'home'
 	        response.should have_selector("title", :content =>"Rails Tweet | Home")
     end
   end

  describe "GET 'about'" do
 	  it "should be successful" do
	      get 'about'
	      response.should be_success
          end
      
          it "Should Have the right title" do
	     get 'about'
	    response.should have_selector("title", :content =>"Rails Tweet | About" ) 
         end
     end
  describe " GET 'contact'" do
	it "Should be successful" do
		get 'contact'
		response.should be_success
	end
	it "Should Have the right title" do
		get 'contact'
		response.should have_selector( "title",:content=> "Contact")
       end
     end
end
