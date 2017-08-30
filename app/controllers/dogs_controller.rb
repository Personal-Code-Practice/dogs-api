class DogsController < ApplicationController
  def index
    @dogs = Dog.all
    render 'index.json.jbuilder'
  end
  def show
    @dog = Dog.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end
  def create
    @dog = Dog.new(
      name: params[:name],
      breed: params[:breed],
      age: params[:age]
    )
    @dog.save
    render 'show.json.jbuilder'
  end
  def update
    @dog = Dog.find_by(id: params[:id])
    @dog.assign_attributes(
      name: params[:name],
      breed: params[:breed],
      age: params[:age]
    )
    @dog.save
    render 'show.json.jbuilder'
  end
  def destroy
    @dog = Dog.find_by(id: params[:id])
    @dog.destroy
    render 'show.json.jbuilder'
  end
end
