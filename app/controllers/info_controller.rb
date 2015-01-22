class InfoController < ApplicationController

  def home
    @info = NZIC::Info.find_by(name: 'home')
  end

  def show
    @info = NZIC::Info.find_by(name: params[:name])
  end
end
