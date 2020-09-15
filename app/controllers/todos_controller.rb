class TodosController < ApplicationController

  def update
    Todo.update(params[:id], isCompleted: params[:isCompleted])
  end

  def create
    if params[:project_id]
      Todo.create(params.permit(:text,:isCompleted,:project_id))
    else
      project = Project.create(params.permit(:title))
      project.todos.create(params.permit(:text, :isCompleted))
    end
  end

end
