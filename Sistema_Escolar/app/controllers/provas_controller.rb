class ProvasController < ApplicationController

def new 
@prova=Prova.new
if params[:aluno]
@aluno=Aluno.find(params[:aluno])
@prova.aluno=@aluno
end
end


def create
  @prova = Prova.new(params[:prova])
respond_to do |format|
  if @prova.save
   format.html { redirect_to @prova}
  else
    render action: "new"
  end
end
end


def show
@prova = Prova.find(params[:id])
end

end
