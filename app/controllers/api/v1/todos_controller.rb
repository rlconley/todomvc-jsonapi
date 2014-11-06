class Api::V1::TodosController < ApplicationController

  def index
    @todos = Todo.all
  end

  def show
    @todo = Todo.find(params[:id])
    JSON.parse(@todo)
  end

  def create
    @todo = Todo.new
  end

  def update

  end

  def destroy

  end

end
