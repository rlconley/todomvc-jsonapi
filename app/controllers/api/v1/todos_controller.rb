class Api::V1::TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def show
    @todo = todo.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render json: @todo}
    end
  end

  def create

  end
end
