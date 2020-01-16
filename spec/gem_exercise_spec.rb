require 'spec_helper'
require 'support/default_text'

RSpec.describe GemExercise do
  before(:all) do
    @custom_text = 'my custom text'
    @default_text = receive_default
  end

  it 'has a version number' do
    expect(GemExercise::VERSION).not_to be nil
  end

  context 'Configuration class instance' do
    before(:all) { @config = GemExercise::Configuration.new }

    it 'has a message' do
      expect(@config).not_to be nil
    end
    it 'message contain default text ' do
      expect(@config.message).to eq @default_text
    end
  end

  context 'Message class' do
    before(:all) { @message = GemExercise::Message }
    after(:each) { @message.configuration = nil }

    it 'configure contain custom text if set up one' do
      @message.configure { |config| config&.message = @custom_text }
      expect(@message.configuration.message).to eq @custom_text
    end
    it 'configure contain default text' do
      @message.reset
      expect(@message.configuration.message).to eq @default_text
    end
  end

  context '#write_message' do
    before(:all) { @message = GemExercise::Message }
    after(:each) { @message.configuration = nil }

    it 'outputs custom text' do
      @message.configure { |config| config.message = @custom_text }
      expect{ @message.write_message }.to output(@custom_text + "\n").to_stdout
      #expect{ puts 'qwe' }.to output('qwe').to_stdout
    end
    it 'outputs default text' do
      expect{ @message.write_message }.to output(@default_text).to_stdout
    end
  end
  
  context '#configure' do
    it 'yields block' do
      expect { |b| GemExercise::Message.configure(&b) }.to yield_with_args GemExercise::Configuration
    end
    it 'does not raise exception if called without block' do
      expect{ GemExercise::Message.configure}.not_to raise_error
    end
  end

  context '#conf' do
    it 'returns instance_of GemExercise::Configuration' do
      expect(GemExercise::Message.conf).to be_an_instance_of GemExercise::Configuration
    end
    it 'returns existing instance if one already set in \'configuration\' accessor' do
      existing_instance = GemExercise::Message.conf
      expect(GemExercise::Message.conf).to be existing_instance
    end
  end

  context '#reset' do
    it 'returns new instance even if one already set in \'configuration\' accessor' do
      existing_instance = GemExercise::Message.conf
      expect(GemExercise::Message.reset).not_to be existing_instance
    end
  end
end
