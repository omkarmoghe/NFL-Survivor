class CreateQueSchedulerSchema < ActiveRecord::Migration[6.0]
  def change
    Que::Scheduler::Migrations.migrate!(version: 5)
  end
end
