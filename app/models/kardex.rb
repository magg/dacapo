class Kardex < ActiveRecord::Base
  belongs_to :subject
  belongs_to :student
  belongs_to :tetramod
  
  attr_accessible :c1, :c2, :c3, :orden_kardex, :p1, :p2, :p3, :student_id, :subject_id, :tetramod_id
end
