module Api
	module V1 #V1 con V mayuscula
		class EntregaequipoController < ApplicationController
			def index
				entregaequipo = Entregaequipo.order('created_at DESC');
				render json: {status: 'SUCCESS', message: 'Loaded entregaequipos', data: entregaequipo}, status: :ok
			end #end index
			def show #hace busqueda por id en la BD de entregaequipo
				entregaequipo = Entregaequipo.find(params[:id])
				
				render json: {status: 'SUCCESS', message: 'Loaded entregaequipo', data: entregaequipo}, status: :ok
			end #end show
			def create
				entregaequipo = Entregaequipo.new(entregaequipo_params)

				if entregaequipo.save
				render json: {status: 'SUCCESS', message: 'Saved entregaequipo', data: entregaequipo}, status: :ok
				else 
				render json: {status: 'ERROR', message: 'Entregaequipo not saved', data: entregaequipo.errors}, status: :unprocessable_entity
			end #end if

			end #end create
			
			def destroy #funcion para eliminar registro en la BD
			entregaequipo = Entregaequipo.find(params[:id])
			entregaequipo.destroy
			render json: {status: 'SUCCESS', message: 'Deleted entregaequipo', data: entregaequipo}, status: :ok

			end #end destroy

			def update #actualiza o modifica registro en BD
				entregaequipo = Entregaequipo.find(params[:id])
				if entregaequipo.update_attributes(entregaequipo_params)
				render json: {status: 'SUCCESS', message: 'Updated entregaequipo', data: entregaequipo}, status: :ok
				else
				render json: {status: 'ERROR', message: 'entregaequipo not Updated', data: entregaequipo.errors}, status: :unprocessable_entity
				end #end if

			end #end update

			private

				def entregaequipo_params
					params.permit(:equi_opera, :equi_fuera, :entregado, :mante_preve, :mante_correc, :calibracion)
				end #end entregaequipo_params

		end
	end
end