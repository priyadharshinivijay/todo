require 'active_record'
require "date"
class Todo<ActiveRecord::Base
    validates :todo_text, presence: true
    validates :due_date, presence: true
    validates :todo_text, length: { minimum: 2}
    belongs_to :user
    
    def to_displayable_string 
        display_status = completed ? "[X]" : "[ ]" 
        "#{id}. #{display_status} #{todo_text} #{due_date}"  
    end
    def self.to_displayable_string
        all.map{|todo| todo.to_displayable_string}
    end
    def self.of_user(user)
        all.where(user_id: user.id)
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
    def self.completed?
        all.where(completed:true)
    end

end