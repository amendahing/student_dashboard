class StudentsController < ApplicationController
    def index
    end

    def show
        @student = Student.find(params[:sid])
        @dojo = Dojo.find(params[:id])
        @cohort = Dojo.find(params[:id]).students
    end

    def new
      @dojo_id = params[:id]
      @dojos = Dojo.all
    end

    def create
        Student.create(fname: params[:fname], lname: params[:lname], email: params[:email], dojo: Dojo.find(params[:dojo]))
        redirect_to '/'

    end

    def edit
        @student = Student.find(params[:sid])
        @dojos = Dojo.all
    end

    def update
    end

    def destroy
        Student.find(params[:sid]).destroy
        redirect_to "/"
    end

end
