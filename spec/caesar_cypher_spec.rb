require_relative '../caeser_cypher'

describe '#to_ascii' do
  context 'Input string with a shift key' do
    it 'input string is hello and shift key is 3' do
      shift_key =  3
      string = 'Hello'
      output_msg = "Your string 'Hello' in ascii is 'Khoor'"

      expect(self).to receive(:puts).with(output_msg)

      to_ascii(string, shift_key)
    end
  end
end