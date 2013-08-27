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
    if @todo
      #respond_with @todo
      respond_to do |format|
        format.json { render :json => @todo }
      end
    else
      respond_to do |format|
        format.json { render json: {error: 404} }
      end
    end
  end

  def create
    logger.debug("todo_params=#{todo_params}")
    @todo = Todo.create(todo_params)
    #respond_with @todo
    respond_to do |format|
      format.json { render :json => @todo }
    end
  end

  def update
    @todo = Todo.find(params[:id])
    if @todo
      @todo.update_attributes(todo_params)
      #respond_with @todo
      respond_to do |format|
        format.json { render :json => @todo }
      end
    else
      respond_to do |format|
        format.json { render json: {error: 404} }
      end
    end
  end

  def destroy
    @todo = Todo.find(params[:id])
    if @todo
      @todo.destroy
      #respond_with @todo
      respond_to do |format|
        format.json { render :json => {} }
      end
    else
      respond_to do |format|
        format.json { render json: {error: 404} }
      end
    end
  end

  private
    def todo_params
      params[:todo].permit(:content)
    end
end
