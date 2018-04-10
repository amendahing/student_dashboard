class DojosController < ApplicationController
  def index
      @dojos = Dojo.all
  end


  def new
  end


  def create
      Dojo.create(dojo_params)
      redirect_to "/"
  end


  def show
      @dojo = Dojo.where(id: params[:id])
      @students = Dojo.find(params[:id]).students
      # puts "Dojo we are interested in ----->", @dojo[0]['branch']
      render 'show'
  end


  def edit
      @dojo = Dojo.find(params[:id])
      render 'edit'
  end


  def update
      Dojo.find(params[:id]).update(edit_params)
      redirect_to "/"
  end


  def destroy
    Dojo.find(params[:id]).destroy
    redirect_to "/"
  end


  private
    def dojo_params
        params.require(:dojo).permit(:branch, :street, :city, :state)
    end

    def edit_params
        params.require(:edit).permit(:branch, :street, :city, :state)
    end
end
