class Answer < ApplicationRecord

    
    belongs_to :submission, inverse_of: :answers
end
