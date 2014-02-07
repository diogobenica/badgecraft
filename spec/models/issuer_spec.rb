require 'spec_helper'

describe Issuer do
  before do
    Issuer.load_from_yml "#{Rails.root}/spec/fixtures/issuer.yml"
  end
  context 'on app start' do
    context 'loading settings' do
      it 'assigns from yml config file' do
        expect(Issuer.name).to eq('Azucrinaldo')
        expect(Issuer.url).to eq('http://azucrinaldo.com.br')
      end
    end
  end

  context '#to_json' do
    it 'returns a json with its attributes' do
      expect(Issuer.to_json).to eq('{}')
    end
  end
end
