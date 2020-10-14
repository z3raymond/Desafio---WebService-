describe ' Empregado Controller ' do

    it 'Alterar usuário' do
        @body=
        {
          
            "admissao": "12/10/2028",
             "cargo": "Teste Api2328",
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

    @request_put= HTTParty.put('https://inm-api-test.herokuapp.com/empregado/alterar/10',headers:@headers,body:@body)
    puts @request_put
    end
end