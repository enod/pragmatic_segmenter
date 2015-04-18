module PragmaticSegmenter
  module Languages
    module Burmese
      include Languages::Common

      SENTENCE_BOUNDARY = /.*?[။၏!\?]|.*?$/
      Punctuations = ['။', '၏', '?', '!']

      class Process < Process
        private

        def sentence_boundary_punctuation(txt)
          txt.scan(SENTENCE_BOUNDARY)
        end

        def punctuation_array
          Punctuations
        end
      end
    end
  end
end
