class Membership < ActiveRecord::Base
  belongs_to :subject
  belongs_to :period
  belongs_to :shift
  belongs_to :teacher
  belongs_to :group
  attr_accessible :cupo, :group_id, :horario, :lim_faltas, :period_id, :sesiones, :shift_id, :teacher_id, :subject_id
end
