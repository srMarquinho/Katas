require 'json'

class Converter
  def initialize(string)
    @string = string
  end

  def convert(type)
    if type == :text
      @string
    elsif type == :html
      "<html><head></head><body>#{ @string }</body></html>"
    elsif type == :json
      { response: @string }.to_json
    elsif type == :xml
      "<response>#{ @string }</response>"
    else
      raise "Unrecognised type"
    end
  end

  def convert_upcase(type)
    if type == :text
      @string.upcase
    elsif type == :html
      "<html><head></head><body>#{ @string.upcase }</body></html>"
    elsif type == :json
      { response: @string.upcase }.to_json
    elsif type == :xml
      "<response>#{ @string.upcase }</response>"
    else
      raise "Unrecognised type"
    end
  end

  def convert_location(type)
    if type == :text
      @string.gsub(/./, '*' )
    elsif type == :html
      "<html><head></head><body>#{ @string.gsub(/./, '*' ) }</body></html>"
    elsif type == :json
      { response: @string.gsub(/./, '*' ) }.to_json
    elsif type == :xml
      "<response>#{ @string.gsub(/./, '*' ) }</response>"
    else
      raise "Unrecognised type"
    end
  end
end
