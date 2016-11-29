require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

	def setup
    	@base_title = "Bookshelf Social Network"
  	end

	test "should get home" do
		get root_url
		assert_response :success
		assert_select "title", "#{@base_title}"
	end

	test "should get help" do
		get help_url
		assert_response :success
		assert_select "title", "Ayuda | #{@base_title}"
	end

	test "should get about" do
		get about_url
		assert_response :success
		assert_select "title", "Sobre | #{@base_title}"
	end

	test "should get contact" do
		get contact_url
		assert_response :success
		assert_select "title", "Contacto | #{@base_title}"
	end

end
