require "tweihe_palindrome/version"

module TweihePalindrome

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  private

    # Returns content for palindrome testing.
    def processed_content
      self.to_s.scan(/[a-z\d]/i).join.downcase
    end
end

class String

  include TweihePalindrome

end

class Integer

  include TweihePalindrome

end
