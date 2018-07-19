class Form < ApplicationRecord

    include Rails.application.routes.url_helpers

    after_save :generate_url

    has_many :questions
    has_many :submissions


    private

    def generate_url
        
        
        puts ENV['ROOT_URL'] + ':3000' + '/' + 'forms/' + self.id.to_s + '/' + 'submissions/new'
        
        x = ENV['ROOT_URL'] + ':3000' + '/' + 'forms/' + self.id.to_s + '/' + 'submissions/new'

        self.url = x
        

        self.update_column(:url, x)

        

        
    end
end