require 'test_helper'

class NvramTest < ActiveSupport::TestCase
  test "test nvram existence" do
     NAME = 'wan_test'
     VAL  = '1234'
     rec = Nvram.create :name => NAME, :val => VAL
     assert rec.save, 'Not saved!'

     assert (rec = Nvram.find_by_name( NAME )), 'Not found'
     assert rec.val == VAL, 'Not equal'

     rec.destroy
  end
end
