require 'test_helper'

class CompanyTest < ActiveSupport::TestCase
  test "The company cannot be saved without a name" do
    company = Company.new
    assert_not company.save, "Company saved without a name"
  end
end
