class ClientsController < ApplicationController

    def index
        render json: Client.all
    end

    def show
        client = Client.find(params[:id])
        render json: client, status: :ok # serializer, TotalMembershipsSerializer
    end

    def update
        client = Client.find(params[:id])
        client.update!(client_params)
        render json: client, status: :accepted
    end

    private

    def client_params
        params.permit(:name, :age)
    end

end

    ##BONUS Serializer 
    # def total_memberships
    #     self.object.memberships.sum(:charge)
    # end


