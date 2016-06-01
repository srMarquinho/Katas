require 'converter'

describe Converter do
  subject(:converter) { described_class.new(string) }
  let(:string) { "Example string" }

  describe '.convert' do
    it 'converts a string given a type' do
      expect(converter.convert(:text)).to eq "Example string"
      expect(converter.convert(:html)).to eq "<html><head></head><body>Example string</body></html>"
      expect(converter.convert(:json)).to eq "{\"response\":\"Example string\"}"
      expect(converter.convert(:xml)).to eq "<response>Example string</response>"
    end

    it 'raises an error given an unrecognised type' do
      expect { converter.convert(:garbage) }.to raise_error "Unrecognised type"
    end
  end

  describe '#convert_upcase' do
    it 'upcase string and converts to type' do
      expect(converter.convert_upcase(:text)).to eq "EXAMPLE STRING"
      expect(converter.convert_upcase(:html)).to eq "<html><head></head><body>EXAMPLE STRING</body></html>"
      expect(converter.convert_upcase(:json)).to eq "{\"response\":\"EXAMPLE STRING\"}"
      expect(converter.convert_upcase(:xml)).to eq "<response>EXAMPLE STRING</response>"
    end
  end

  describe '#convert_location' do
    it 'upcase string and converts to type' do
      expect(converter.convert_location(:text)).to eq "**************"
      expect(converter.convert_location(:html)).to eq "<html><head></head><body>**************</body></html>"
      expect(converter.convert_location(:json)).to eq "{\"response\":\"**************\"}"
      expect(converter.convert_location(:xml)).to eq "<response>**************</response>"
    end
  end
end
