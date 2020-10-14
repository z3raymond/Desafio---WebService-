describe ' Cadastrar usuário ' do
    it 'post Empregado Controller' do
        @body=
        {
  "admissao": "12/10/2020",
  "cargo": "Teste Api2323",
  "comissao": "1.000,00",
  "cpf": "657.571.060-34",
  "departamentoId": 10,
  "nome": "jose raimundo",
  "salario": "4.000,00",
  "sexo": "m",
  "tipoContratacao": "clt"
    }.to_json
    @headers={
        
    'Authorization': 'Basic aW5tZXRyaWNzOmF1dG9tYWNhbw==',
    'content-type': 'application/json'
        
    }
@request= HTTParty.post('https://inm-api-test.herokuapp.com/empregado/cadastrar',body:@body,headers:@headers)
puts @request    
end
end