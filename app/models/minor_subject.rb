class Minor_subject < ActiveRecord::Base
  belongs_to :minor
  belongs_to :subject
  
  
  attr_accessible :descripcion
end