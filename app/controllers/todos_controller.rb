class TodosController < ApplicationController
    def index
        #render plain:Todo.order(:due_date).map {|todo| todo.to_displayable_string}.join("\n")
        render "index"

    end
    def show
        #id=params[:id]
        #todo=Todo.find(id)
        #render plain:todo.to_pleasant_string
        render "todo"
    end
    def create
        todo_text=params[:todo_text]
        due_date=DateTime.parse(params[:due_date])
        #check if it is new or create!
        todo=Todo.create!(todo_text:todo_text,due_date:due_date,completed:false)
        redirect_to todos_path
    end
    def update  
        id=params[:id]
        completed=params[:completed]
        todo=Todo.find(id)
        todo.completed=completed
        todo.save!
        render plain:todo.to_pleasant_string
    end
end