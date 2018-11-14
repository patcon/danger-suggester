require 'danger'
require 'danger/suggester/suggestion'

module Danger
  class DangerSuggester < ::Danger::Plugin
    def lint
      suggestions.each do |suggestion|
        markdown(
          suggestion.message,
          file: suggestion.path,
          line: suggestion.line,
        )
      end
    end

    private

    # @todo
    # @return [Array<Danger::Suggester::Suggestion>]
    def suggestions
      [
        ::Danger::Suggester::Suggestion.new(
          line: 1,
          path: 'lib/danger/danger_suggester.rb',
        )
      ]
    end
  end
end
