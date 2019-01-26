class Service < ApplicationRecord
  belongs_to :teacher_id
  belongs_to :subject_id
end
