class ModelsController < ApplicationController
  def show 
  	@model = Model.find(params[:id]) #Userモデルから、userを探してきた。
  end
end