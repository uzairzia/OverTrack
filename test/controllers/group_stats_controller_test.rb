require 'test_helper'

class GroupStatsControllerTest < ActionDispatch::IntegrationTest
  test "should not get index when logged out" do
    get group_stats_url
    assert root_url
  end

end
