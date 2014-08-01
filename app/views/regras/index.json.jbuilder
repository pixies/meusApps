json.array!(@regras) do |regra|
  json.extract! regra, :id, :regra, :descricao
  json.url regra_url(regra, format: :json)
end
