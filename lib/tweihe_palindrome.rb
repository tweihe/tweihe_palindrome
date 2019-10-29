require "tweihe_palindrome/version"

# module TweihePalindrome
#   class Error < StandardError; end
#   # Your code goes here...
# end

class String

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  private

    # Returns content for palindrome testing.
    def processed_content
      self.scan(/[a-z]/i).join.downcase
    end
end
