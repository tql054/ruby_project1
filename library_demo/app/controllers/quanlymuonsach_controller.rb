class QuanlymuonsachController < ApplicationController

  def index
    @quanlymuonsach = Quanlymuonsach.all
  end
end
