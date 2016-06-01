require 'json'
# Understands the conversion of strings to JSON
class JsonParser
  def initialize(string)
    @string = string
  end

  def convert
    { response: string }.to_json
  end

  private

  attr_reader :string
end