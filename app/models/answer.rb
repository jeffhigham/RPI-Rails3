class Answer < ActiveRecord::Base
  attr_accessible :content, :question_id, :category
  belongs_to :question
end
