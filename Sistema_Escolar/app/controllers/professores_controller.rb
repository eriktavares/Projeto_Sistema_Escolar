class ProfessoresController < ApplicationController

def index
  @professores = Professor.order :nome
end

def new
 @professor= Professor.new
end

def create
  @professor = Professor.new(params[:professor])
  if @professor.save
    redirect_to action: "index"
  else
    render action: "new"
  end
end

def show
  @professor = Professor.find(params[:id])
end

def destroy
  @professor = Professor.find(params[:id])
 if @professor.turmas.count>0
redirect_to(action: "show", notice:"Falha, professor esta cadastrado em uma ou mais turmas" )
else
  @professor.destroy
  redirect_to(action: "index")
end
end
def falha
end
def edit
  @professor = Professor.find params[:id]
end
end
