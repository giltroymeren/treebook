require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
  
	test "does slash login route opens the login page" do 
		get '/login' 
		assert_response :success	
	end

	test "does slash logout route opens the log out page" do 
		get '/logout' 
		assert_response :redirect
		assert_redirected_to '/'	
	end

	test "does slash register route opens the register page" do 
		get '/register' 
		assert_response :success	
	end

	test "that a profile page works" do 
		get "/mcruz"
		assert_response :success
	end

end
