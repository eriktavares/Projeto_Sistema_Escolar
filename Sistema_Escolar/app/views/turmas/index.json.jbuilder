json.array!(@turmas) do |turma|
  json.extract! turma, :id, :nome, :professor_id
  json.url turma_url(turma, format: :json)
end
