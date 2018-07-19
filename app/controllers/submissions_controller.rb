class SubmissionsController < ApplicationController

    

    before_filter :find_form

    def new
        

        @submission = @form.submissions.new
        @efgh = @form.questions.all
        @efgh.each do |tin|
            @submission.answers.build
        end
        

        

        

    end

    def create
        

        @submission = @form.submissions.new(submission_params)
        @submission.form_id = params[:form_id]        
        @submission.save!
        
    end

    
    private 

    def submission_params
        params.require(:submission).permit(answers_attributes: [:answer_text])
    end



    protected

    def find_form
        @form = Form.find(params[:form_id])
    end
    
end