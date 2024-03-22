module Board
  module Operations
    module UseCases
      module Postings
        class GetAll
          include Data::Repositories
          include Mappers::Postings

          def call
            postings = repo.find_all
            mapper.map_all_to_response(postings)
          end

          private

          def mapper
            @mapper ||= ResponseMapper.new
          end

          def repo
            @repo ||= PostingRepository.new
          end
        end
      end
    end
  end
end
