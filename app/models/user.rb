class User < ActiveRecord::Base
    validates:name,:email,:password,presence:true

    def to_print
        "#{id} #{name} #{email}"
    end
end
