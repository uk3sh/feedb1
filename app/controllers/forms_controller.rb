class FormsController < ApplicationController

    require 'net/http'
    require 'net/https'


    def new
        @form = Form.new
    end
    
    def create
        @form = Form.new(form_params)
        @form.save
        redirect_to form_path
    end

    def show
        find_form
    end

    def sms
        ph = params[:anything][:number]
        puts ph

        qwerty = params[:anything][:url]

        puts qwerty
        
        blah = 'http://localhost:3000/forms/8/submissions/new'

        
    
    end

    private

        def form_params
            params.require(:form).permit(:name)
        end

        def find_form
            @form = Form.find(params[:id])
        end

end