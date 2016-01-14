require 'test_helper'

class TaskTest < ActiveSupport::TestCase

  def setup
      @task = Task.new(name: "振込", content: "水道代を振り込む", status: 0)
  end

  test "name should be present" do
    @task.name = "      "
    assert_not @task.valid?
  end

  test "content should be present" do
    @task.content = "     "
    assert_not @task.valid?
  end

  test "status should be present" do
    @task.status = "      "
    assert_not @task.valid?
  end

end
