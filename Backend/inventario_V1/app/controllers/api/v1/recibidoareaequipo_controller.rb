module Api
	module V1 #V1 con V mayuscula
		class RecibidoareaequipoController < ApplicationController
			def index
				recibidoareaequipo = Recibidoareaequipo.order('created_at DESC');
				#render json: {status: 'SUCCESS', message: 'Loaded recibidoareaequipos', data: recibidoareaequipo}, status: :ok
				render json: contrato, status: :ok
			end #end index
			def show #hace busqueda por id en la BD de recibidoareaequipo
				recibidoareaequipo = Recibidoareaequipo.find(params[:id])
				
				#render json: {status: 'SUCCESS', message: 'Loaded recibidoareaequipo', data: recibidoareaequipo}, status: :ok
				render json: contrato, status: :ok
			end #end show
			def create
				recibidoareaequipo = Recibidoareaequipo.new(recibidoareaequipo_params)

				if recibidoareaequipo.save
				#render json: {status: 'SUCCESS', message: 'Saved recibidoareaequipo', data: recibidoareaequipo}, status: :ok
				render json: contrato, status: :ok
				else 
				#render json: {status: 'ERROR', message: 'Recibidoareaequipo not saved', data: recibidoareaequipo.errors}, status: :unprocessable_entity
				render json: contrato, status: :unprocessable_entity
			end #end if

			end #end create
			
			def destroy #funcion para eliminar registro en la BD
			recibidoareaequipo = Recibidoareaequipo.find(params[:id])
			recibidoareaequipo.destroy
			#render json: {status: 'SUCCESS', message: 'Deleted recibidoareaequipo', data: recibidoareaequipo}, status: :ok
			render json: contrato, status: :ok

			end #end destroy

			def update #actualiza o modifica registro en BD
				recibidoareaequipo = Recibidoareaequipo.find(params[:id])
				if recibidoareaequipo.update_attributes(recibidoareaequipo_params)
				#render json: {status: 'SUCCESS', message: 'Updated recibidoareaequipo', data: recibidoareaequipo}, status: :ok
				render json: contrato, status: :ok
				else
				#render json: {status: 'ERROR', message: 'recibidoareaequipo not Updated', data: recibidoareaequipo.errors}, status: :unprocessable_entity
				render json: contrato, status: :unprocessable_entity
				end #end if

			end #end update

			private

				def recibidoareaequipo_params
					params.permit(:recibido_por, :fecha_recibido, :persona_asign)
				end #end recibidoareaequipo_params

		end
	end
end