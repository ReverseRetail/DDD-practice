module Board
  module Data
    module Models
      class Posting < ApplicationRecord
        validates :title, :qualifications, presence: true
      end
    end
  end
end
