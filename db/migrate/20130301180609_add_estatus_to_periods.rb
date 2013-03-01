class AddEstatusToPeriods < ActiveRecord::Migration
  def change
    add_column :periods, :estatus, :integer
  end
end
