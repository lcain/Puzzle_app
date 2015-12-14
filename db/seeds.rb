Map.destroy_all

m1 = Map.create :name => 'Dinobaby', :image => "dinoFull.png"

Piece.destroy_all

p1 = Piece.create :image => "topRight.png", :x_cor => 176, :y_cor => 86
p2 = Piece.create :image => "topLeft.png", :x_cor => 103, :y_cor => 103
p3 = Piece.create :image => "bottomRight.png", :x_cor => 178, :y_cor => 174
p4 = Piece.create :image => "bottomLeft.png", :x_cor => 30, :y_cor => 174


m1.pieces << p1 << p2 << p3 << p4

# http://www.shawnimals.com/assets/2061/340x/ThreeLeggedDinoBaby.png?1345600682?1351846921

# u3 = User.create :name => 'Linda', :email => 'linda@gmail.com', :password => 'chicken', :password_confirmation => 'chicken'

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
