# == Schema Information
#
# Table name: feedbacks
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  name           :string
#  safety         :integer
#  cleanliness    :integer
#  comfort        :integer
#  friendliness   :integer
#  beauty         :integer
#  transportation :integer
#  info           :string
#  latitude       :float
#  longitude      :float
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class FeedbackTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
