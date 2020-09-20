class TodosController < ApplicationController

  def update
    render json: Todo.update(params[:id], isCompleted: params[:isCompleted])
  end

  def create
    if params[:project_id]
      todo = Todo.create(params.permit(:text,:isCompleted,:project_id))
    else
      project = Project.create(params.permit(:title))
      todo = project.todos.create(params.permit(:text, :isCompleted))
    end
    render json: todo
  end
end
