# == Schema Information
#
# Table name: pieces
#
#  id         :integer          not null, primary key
#  image      :text
#  x_cor      :integer
#  y_cor      :integer
#  map_id     :integer
#  created_at :datetime
#  updated_at :datetime
#

class Piece < ActiveRecord::Base
  belongs_to :map
end
