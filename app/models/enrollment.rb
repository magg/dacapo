class Enrollment < ActiveRecord::Base
  belongs_to :subject
  belongs_to :student
  belongs_to :period
  belongs_to :group
  
  attr_accessible :c1, :c2, :c3, :calif_final, :estatus, :f1, :f2, :f3, :group_id, :oportunidad, :period_id, :promedio, :student_id, :subject_id, :tot_faltas
end
