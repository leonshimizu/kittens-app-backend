class KittensController < ApplicationController
  def index
    kittens = Kitten.all
    render json: kittens.as_json
  end

  def create
    kitten = Kitten.new(
      name: params[:name],
      age: params[:age]
    )
    kitten.save
    render json: kitten.as_json
  end

  
end
