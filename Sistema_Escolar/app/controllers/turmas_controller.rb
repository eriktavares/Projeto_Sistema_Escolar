class TurmasController < ApplicationController


def index
  @turmas= Turma.order :nome
end


def new
@professores=Professor.order:nome
 @turma= Turma.new

end



def create
  @turma= Turma.new(params[:turma])

  respond_to do |format|
    if @turma.save
      format.html { redirect_to @turma,
        notice: 'Turma criada.' }
     
    else
      @professores=Professor.order:nome
      format.html { render action: "new" }
      
    end
  end
end


def edit
	@professores=Professor.order:nome
  @turma = Turma.find params[:id]
end

def show

  @turma = Turma.find(params[:id])
@alunos=@turma.alunos
end

def destroy
  @turma = Turma.find(params[:id])
  @turma.destroy

  redirect_to(action: "index")
end

def update
  @turma= Turma.find(params[:id])
respond_to do |format|
  if @turma.update_attributes(params[:turma])
   format.html { redirect_to @turma,
        notice: 'Turma Alterada.' }
else
	@professores=Professor.order:nome
format.html { render action: "edit" }
  end
end

end
end

