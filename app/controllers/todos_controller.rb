class TodosController < ApplicationController
    def index
        render plain:Todo.order(:due_date).map {|todo| todo.to_pleasant_string}.join("\n")
    end
    def show
        id=params[:id]
        todo=Todo.find(id)
        render plain:todo.to_pleasant_string
    end
    def create
        text=params[:todo_text]
        date=params[:due_date]
        todo=Todo.new(todo_text:text,due_date:date,completed:false)
        todo.save!
        render plain:"this is post method"
    end
    def update
        id=params[:id]
        todo=Todo.find(id)
        todo.completed=True
        todo.save!
        render plain:todo.to_pleasant_string
    end
end