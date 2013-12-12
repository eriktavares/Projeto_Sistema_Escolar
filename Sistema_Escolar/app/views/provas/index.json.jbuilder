json.array!(@provas) do |prova|
  json.extract! prova, :id
  json.url prova_url(prova, format: :json)
end
