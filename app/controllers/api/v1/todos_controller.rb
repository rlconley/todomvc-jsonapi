class Api::V1::TodosController < ApplicationController

   def index
    @todos = Todo.all
  end

  def show
    @todo = Todo.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render json: @todo}
    end
  end

  def create

  end

  def update

  end

  def destroy

  end
end
