class Api::V1::TodosController < ApplicationController

  def index
    @todos = Todo.all
    render json: @todos
  end

  def show
    @todo = Todo.find(params[:id])
    JSON.parse(@todo)
  end

  def create
    @todo = Todo.new
    render json: @todo
  end

  def update

  end

  def destroy

  end

end
