class Curriculums < ActiveRecord::Base
  belongs_to :subject
  belongs_to :major
  belongs_to :tetramod
  attr_accessible :major_id, :orden_kardex, :subject_id, :tetramod_id
end
