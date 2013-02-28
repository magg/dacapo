class Minorization < ActiveRecord::Base
  belongs_to :minor
  belongs_to :subject
  attr_accessible :descripcion, :minor_id, :subject_id
end
