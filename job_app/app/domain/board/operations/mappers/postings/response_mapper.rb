module Board
  module Operations
    module Mappers
      module Postings
        class ResponseMapper

          def map_to_response(posting)
            {
              id: posting.id,
              title: posting.title,
              description: posting.description,
              qualifications: posting.qualifications,
              benefits: posting.benefits
            }
          end

          def map_all_to_response(postings)
            response = []
            postings.each do |posting|
              response << map_to_response(posting)
            end
            response
          end
        end
      end
    end
  end
end
