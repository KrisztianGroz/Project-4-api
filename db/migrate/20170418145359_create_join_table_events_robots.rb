class CreateJoinTableEventsRobots < ActiveRecord::Migration[5.1]
  def change
    create_join_table :events, :robots do |t|
      # t.index [:event_id, :robot_id]
      # t.index [:robot_id, :event_id]
    end
  end
end
