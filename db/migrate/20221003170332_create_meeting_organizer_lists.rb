class CreateMeetingOrganizerLists < ActiveRecord::Migration
  def change
    create_table :meeting_organizer_lists do |t|
      t.string :employee_id
      t.string :first_name
      t.string :last_name
      t.string :email_id
      t.integer :last_used

      t.timestamps
    end
  end
end
