class ApplicationJob < Que::Job
  self.priority = 50 # (Linux scale)
  self.exclusive_execution_lock = true
end
