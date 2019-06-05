require 'httparty'

class Cep
  def getBairro
    response = HTTParty.get('https://viacep.com.br/ws/04524030/json/')
	cepResponse = JSON.parse(response.body)
	cepResponse['bairro']
  end
end


