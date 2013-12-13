class ProvasController < ApplicationController

def new 
@prova=Prova.new

@aluno=Aluno.find(params[:aluno])
@prova.aluno=@aluno

end


def create
  @prova = Prova.new(params[:prova])

  if @prova.save
   redirect_to @prova
  else
@aluno=@prova.aluno
    render action: "new"
  end
end





def show
@prova = Prova.find(params[:id])
end

def edit
@prova=Prova.find(params[:prova])
@aluno=Aluno.find(@prova.aluno_id)
end

def update
@prova= Prova.find(params[:id])
if @prova.update_attributes(params[:prova])
redirect_to @prova
else
@aluno=Aluno.find(@prova.aluno_id)
 render action: "edit" 
  end
end

end

