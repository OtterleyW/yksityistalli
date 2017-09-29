require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
	test "should get root" do
		get root_url
		assert_response :success
	end

	def setup
		@base_title = "Virtuaalitalli"
	end

	test "should get home" do
		get static_pages_home_url
		assert_response :success
		assert_select "title", "Etusivu | #{@base_title}"
	end

	test "should get about" do
		get static_pages_about_url
		assert_response :success
		assert_select "title", "Esittely | #{@base_title}"
	end

end
