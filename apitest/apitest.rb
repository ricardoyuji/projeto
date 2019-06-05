require './apicep.rb'

describe 'cep' do
 it 'checking bairro' do
   cep = Cep.new
   expect(cep.getBairro).to eql('Moema')
 end
end