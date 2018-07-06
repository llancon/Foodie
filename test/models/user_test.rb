require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.new(username:'test', email: 'test@abc.com')
  end

  test 'should be valid' do
    assert @user.valid?
  end

  test 'testing presence of username' do
    @user.username = '    '
    assert_not @user.valid?
  end




end
