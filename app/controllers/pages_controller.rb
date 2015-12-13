class PagesController < ApplicationController
  def demo
    @map = Map.all.first
    @pieces = @map.pieces
  end
end
