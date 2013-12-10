require "ruby_simple_search/errors"

module RubySimpleSearch
  module Error
    ATTRIBUTES_MISSING = "Simple search attributes are missing"
    INVALID_TYPE       = "Extended query is not an array type"
    INVALID_PARAMETERS = "Extended query paramerters are invalid"
    INVALID_PATTERN    = "Pattern is wrong. it should be in the list #{RubySimpleSearch::LIKE_PATTERNS.keys}"
  end
end
