class Minorization < ActiveRecord::Base
  belongs_to :minor
  belongs_to :subject
  #validates_uniqueness_of :minor_id, :scope => :subject_id
  attr_accessible :descripcion, :minor_id, :subject_id
end
