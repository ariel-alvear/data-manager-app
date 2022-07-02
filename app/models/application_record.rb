class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def capitalized_name
    self.name.capitalize
  end
end
