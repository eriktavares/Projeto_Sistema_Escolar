class AlunosController < ApplicationController

def index
  @alunos = Aluno.order :nome
end


def new
@turmas=Turma.order:nome
 @aluno = Aluno.new
end

def create
  @aluno= Aluno.new(params[:aluno])

  respond_to do |format|
    if @aluno.save
      format.html { redirect_to @aluno,
        notice: 'Aluno cadastrado.' }
     
    else
      @turmas=Turma.order:nome
      format.html { render action: "new" }
      
    end
  end
end

def show
  @aluno = Aluno.find(params[:id])
end

def destroy
  @aluno = Aluno.find(params[:id])
  @aluno.destroy

  redirect_to(action: "index")
end

def update
  @aluno= Aluno.find(params[:id])
respond_to do |format|
  if @aluno.update_attributes(params[:aluno])
   format.html { redirect_to @aluno,
        notice: 'Aluno Alterado.' }
else
	@turmas=Turma.order:nome
format.html { render action: "edit" }
  end
end

end

def edit
	@turmas=Turma.order:nome
  @aluno = Aluno.find params[:id]
end


end
