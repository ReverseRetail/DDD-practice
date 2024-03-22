module Board
  module Data
    module Repositories
      class PostingRepository
        include Models
        attr_reader :model

        def initialize
          @model = Posting
        end

        def find_all
          model.all
        end
      end
    end
  end
end
