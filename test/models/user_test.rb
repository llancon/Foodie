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

  test 'tests presence of email' do
    @user.email = ' '
    assert_not @user.valid?
  end

  test 'tests length of name is not too long' do
    @user.username = 'x' * 55
    assert_not @user.valid?
  end

  test 'length of email is not too long' do
    @user.email = 'e' * 250 + '@abc.com'
    assert_not @user.valid?
  end

  test "email validation should accept valid addresses" do
      valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                           first.last@foo.jp alice+bob@baz.cn]
      valid_addresses.each do |email|
        @user.email = email
        assert @user.valid?, "#{email.inspect} should be valid"
      end
    end

end
