class PrototypesController < ApplicationController
  def index
    @prototypes = Prototype.all
  end

  def new
    @tweet = Tweet.new
  end
