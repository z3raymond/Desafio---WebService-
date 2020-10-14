module contato
    include HTTParty
    #url base de contato
    base_uri' https://inm-api-test.herokuapp.com/swagger-ui.html#/'
    #opcoes do meu service
    format :json
    headers Accept: 'Apache License Version 2.0'

end