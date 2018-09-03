class Park < ApplicationRecord
  def friendly_updated_at
    updated_at.strftime("%b %d, %Y")
  end 
end
