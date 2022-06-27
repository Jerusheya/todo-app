class TodosController < ApplicationController
  def index
    @todos=Todo.all
  end
  def add_task 
  end
  def complete 
    @comp = Todo.find(params[:id])    
    @comp[:status] = true    
    if@comp.save  
      @todos=Todo.all
      render "todos/index" 
    end
  end
  def delete 
    @del = Todo.find(params[:id]) 
    if @del.destroy 
      @todos=Todo.all
      render "todos/index" 
    end
  end
  def create 
    @todo=Todo.new(todo_params)
    if @todo.save
      @todos=Todo.all
      render "todos/index"
    end
  end
  private
  def todo_params
    params.require(:todos).permit(:task_name,:date,:status)
  end
end
