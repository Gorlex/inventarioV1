module Api
	module V1 #V1 con V mayuscula
		class LaborejecutadaController < ApplicationController
			def index
				laborejecutada = Laborejecutada.order('created_at DESC');
				#render json: {status: 'SUCCESS', message: 'Loaded laborejecutadas', data: laborejecutada}, status: :ok
				render json: contrato, status: :ok
			end #end index
			def show #hace busqueda por id en la BD de laborejecutada
				laborejecutada = Laborejecutada.find(params[:id])
				
				#render json: {status: 'SUCCESS', message: 'Loaded laborejecutada', data: laborejecutada}, status: :ok
				render json: contrato, status: :ok
			end #end show
			def create
				laborejecutada = Laborejecutada.new(laborejecutada_params)

				if laborejecutada.save
				#render json: {status: 'SUCCESS', message: 'Saved laborejecutada', data: laborejecutada}, status: :ok
				render json: contrato, status: :ok
				else 
				#render json: {status: 'ERROR', message: 'Laborejecutada not saved', data: laborejecutada.errors}, status: :unprocessable_entity
				render json: contrato, status: :unprocessable_entity
			end #end if

			end #end create
			
			def destroy #funcion para eliminar registro en la BD
			laborejecutada = Laborejecutada.find(params[:id])
			laborejecutada.destroy
			#render json: {status: 'SUCCESS', message: 'Deleted laborejecutada', data: laborejecutada}, status: :ok
			render json: contrato, status: :ok

			end #end destroy

			def update #actualiza o modifica registro en BD
				laborejecutada = Laborejecutada.find(params[:id])
				if laborejecutada.update_attributes(laborejecutada_params)
				#render json: {status: 'SUCCESS', message: 'Updated laborejecutada', data: laborejecutada}, status: :ok
				render json: contrato, status: :ok
				else
				#render json: {status: 'ERROR', message: 'laborejecutada not Updated', data: laborejecutada.errors}, status: :unprocessable_entity
				render json: contrato, status: :unprocessable_entity
				end #end if

			end #end update

			private

				def laborejecutada_params
					params.permit(:labor)
				end #end laborejecutada_params

		end
	end
end