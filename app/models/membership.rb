class Membership < ActiveRecord::Base
  belongs_to :subject
  belongs_to :period
  belongs_to :shift
  belongs_to :student
  belongs_to :group
  attr_accessible :cupo, :group_id, :horario, :lim_faltas, :period_id, :sesiones, :shift_id, :student_id, :subject_id
end
