class Submission < ApplicationRecord

    belongs_to :form
    has_many :answers, inverse_of: :submission

    accepts_nested_attributes_for :answers
end
