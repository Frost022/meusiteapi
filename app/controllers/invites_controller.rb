class InvitesController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    # Ler todos os usuarios da lista
    return render json: Invite.all, status: :ok
  end

  def create
    # Adicionar um usuario na lista
    invited = Invite.new(name: params[:name])
    if invited.save
      return render json: invited, status: :ok
    else
      return render json: 'Falha ao salvar o convidado', status: :unprocessable_entity
    end
  end

  def destroy
    # Deleta um usuario da lista
    target_id = params[:id]
    target_invited = Invite.find(target_id) rescue nil
    return render json: "Convidado não encontrado", status: :not_found unless target_invited
    if target_invited.destroy
      return render json: 'Convidado excluido com sucesso', status: :ok
    else
      return render json: 'Falha ao excluir convidado', status: :unprocessable_entity
    end
  end
end