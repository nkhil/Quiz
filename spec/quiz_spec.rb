require 'quiz'

RSpec.describe Quiz do

  describe '#prompt' do
    it "asks the user for an input" do
      expect { Quiz.prompt }.to output(
        a_string_including("what is the capital of france?")
      ).to_stdout
    end
  end

  describe '#receive' do
    it "can store the answer the user enters" do
      # allow(Quiz).to receive(:gets) { 'Paris' }
      allow_any_instance_of(Object).to receive(:gets) { "Paris\n" }
      expect(Quiz.receive).to eq('Paris')
    end
  end

  describe '#run' do
    it "can ask a user the question and evaluate the answer" do
      # allow(Quiz).to receive(:gets) { "Paris\n" }
      allow_any_instance_of(Object).to receive(:gets) { "Paris\n" }
      expect { Quiz.run }.to output(
        a_string_including("CORRECT!")
      ).to_stdout
    end
  end


end
