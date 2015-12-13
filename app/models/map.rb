# == Schema Information
#
# Table name: maps
#
#  id         :integer          not null, primary key
#  name       :text
#  image      :text
#  created_at :datetime
#  updated_at :datetime
#

class Map < ActiveRecord::Base
  has_many :pieces
end
