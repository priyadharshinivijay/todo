class TodosController < ApplicationController
    def index
        render plain:"Hello, this is /todos #{Date.today}"
    end
end