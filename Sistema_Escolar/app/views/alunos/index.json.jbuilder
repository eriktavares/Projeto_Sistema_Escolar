json.array!(@alunos) do |aluno|
  json.extract! aluno, :id, :nome, :turma_id
  json.url aluno_url(aluno, format: :json)
end
