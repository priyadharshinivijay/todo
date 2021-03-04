require 'active_record'
require "date"
class Todo<ActiveRecord::Base
    def to_displayable_string 
        display_status = completed ? "[X]" : "[ ]" 
        "#{id}. #{display_status} #{todo_text} #{due_date}"  
    end
    def self.to_displayable_string
        all.map{|todo| todo.to_displayable_string}
    end
    
    def self.overdue
        all.where("due_date < ?", Date.today)
    end
    def self.due_today
        all.where(due_date: Date.today)
    end
    def self.due_later
        all.where("due_date > ?", Date.today)
    end
    def self.completed
        all.where(completed:true)
    end
  
    # def self.add_task(h={})
    #     todo=Todo.new(todo_text:h[:todo_text],due_date:Date.today+h[:due_in_days],completed:false)
    #     todo.save!
    #     return todo
    # end
    # def self.mark_as_complete!(id)
    #     todo=Todo.find(id)
    #     todo.completed=true
    #     todo.save!
    #     return todo
    # end
end