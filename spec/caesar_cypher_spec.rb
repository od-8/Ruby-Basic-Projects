require_relative '../caeser_cypher'

describe '#to_ascii' do
  context 'When string is empty' do 
    it 'input string is empty and shift key is 5' do
      string = ''
      shift_key = 5 # Random number
      cypher = ''

      result = to_ascii(string, shift_key)
      expect(result).to eq(cypher)
    end
  end

  context 'When string only has letters' do 
    it "input string is 'Hello World' and shift key is 3" do
      string = 'Hello World'
      shift_key = 3 # Random number
      cypher = 'Khoor Zruog'

      result = to_ascii(string, shift_key)
      expect(result).to eq(cypher)
    end
  end

  context 'When string has letters, nums and punctuation' do 
    it "input string is 'Hello World! 123' and shift key is 29" do
      string = 'Hello World! 123'
      shift_key = 29 # Random number
      cypher = 'Khoor Zruog! 123'

      result = to_ascii(string, shift_key)
      expect(result).to eq(cypher)
    end
  end

  context 'When string has only punctuation' do 
    it "input string is '@!£$.,/?;' and shift key is 9" do
      string = '@!£$.,/?;'
      shift_key = 9 # Random number
      cypher = '@!£$.,/?;'

      result = to_ascii(string, shift_key)
      expect(result).to eq(cypher)
    end
  end

  context 'When string has only numbers' do 
    it "input string is '0123456789' and shift key is 4" do
      string = '0123456789'
      shift_key = 4 # Random number
      cypher = '0123456789'

      result = to_ascii(string, shift_key)
      expect(result).to eq(cypher)
    end
  end

  context 'When string has punctuation and numbers' do 
    it "input string is '(0!23$@67&9)' and shift key is 100" do
      string = '(0!23$@67&9'
      shift_key = 100 # Random number
      cypher = '(0!23$@67&9'

      result = to_ascii(string, shift_key)
      expect(result).to eq(cypher)
    end
  end
end