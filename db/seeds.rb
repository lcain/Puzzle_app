Map.destroy_all

m1 = Map.create :name => 'Dinobaby', :image => "/assets/dinoFull.png"

Piece.destroy_all

p1 = Piece.create :image => "/assets/topRight.png", :x_cor => 189, :y_cor => 84
p2 = Piece.create :image => "/assets/topLeft.png", :x_cor => 92, :y_cor => 87
p3 = Piece.create :image => "/assets/bottomRight.png", :x_cor => 208, :y_cor => 227
p4 = Piece.create :image => "/assets/bottomLeft.png", :x_cor => 2, :y_cor => 207


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
