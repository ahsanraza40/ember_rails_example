class TodosController < ApplicationController
  respond_to :json

  def index
    @todos = Todo.all
    #respond_with @todos
    respond_to do |format|
      format.json { render :json => @todos }
    end
  end

  def show
    @todo = Todo.find(params[:id])
    #respond_with @todo
    respond_to do |format|
      format.json { render :json => @todo }
    end
  end
end
