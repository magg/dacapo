class ChangeMatreqInSubjects < ActiveRecord::Migration
  def up
    #change_column :subjects, :matreq, :integer
    connection.execute(%q{
        alter table subjects
        alter column matreq
        type integer using cast(matreq as integer)
      })
  end

  def down
  end
end
