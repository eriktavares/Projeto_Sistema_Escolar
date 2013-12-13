json.array!(@provas) do |prova|
  json.extract! prova, :id, :nota, :aluno_id
  json.url prova_url(prova, format: :json)
end
