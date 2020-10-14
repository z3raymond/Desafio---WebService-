describe 'Empregado Controller ' do

    it 'Listar todos usuários'do
      @headers={
        'Authorization': 'Basic aW5tZXRyaWNzOmF1dG9tYWNhbw==',
        'content-type': 'application/json' 
      }
      @response= HTTParty.get('https://inm-api-test.herokuapp.com/acesso/list_all',headers:@headers)
      
      expect(@response.code).to eq 200
      # puts @response
     
    end
    
    end