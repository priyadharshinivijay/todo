class UserController < ApplicationController
    def index
        render plain: User.all.map {|u| u.to_print}.join("\n")
    end
end