module Api
	module V1 #V1 con V mayuscula
		class RazonsoliserviController < ApplicationController
			def index
				razonsoliservi = Razonsoliservi.order('created_at DESC');
				#render json: {status: 'SUCCESS', message: 'Loaded razonsoliservis', data: razonsoliservi}, status: :ok
				render json: contrato, status: :ok
			end #end index
			def show #hace busqueda por id en la BD de razonsoliservi
				razonsoliservi = Razonsoliservi.find(params[:id])
				
				#render json: {status: 'SUCCESS', message: 'Loaded razonsoliservi', data: razonsoliservi}, status: :ok
				render json: contrato, status: :ok
			end #end show
			def create
				razonsoliservi = Razonsoliservi.new(razonsoliservi_params)

				if razonsoliservi.save
				#render json: {status: 'SUCCESS', message: 'Saved razonsoliservi', data: razonsoliservi}, status: :ok
				render json: contrato, status: :ok
				else 
				#render json: {status: 'ERROR', message: 'Razonsoliservi not saved', data: razonsoliservi.errors}, status: :unprocessable_entity
				render json: contrato, status: :unprocessable_entity
			end #end if

			end #end create
			
			def destroy #funcion para eliminar registro en la BD
			razonsoliservi = Razonsoliservi.find(params[:id])
			razonsoliservi.destroy
			#render json: {status: 'SUCCESS', message: 'Deleted razonsoliservi', data: razonsoliservi}, status: :ok
			render json: contrato, status: :ok

			end #end destroy

			def update #actualiza o modifica registro en BD
				razonsoliservi = Razonsoliservi.find(params[:id])
				if razonsoliservi.update_attributes(razonsoliservi_params)
				#render json: {status: 'SUCCESS', message: 'Updated razonsoliservi', data: razonsoliservi}, status: :ok
				render json: contrato, status: :ok
				else
				#render json: {status: 'ERROR', message: 'razonsoliservi not Updated', data: razonsoliservi.errors}, status: :unprocessable_entity
				render json: contrato, status: :unprocessable_entity
				end #end if

			end #end update

			private

				def razonsoliservi_params
					params.permit(:razon_soli_servi)
				end #end razonsoliservi_params

		end
	end
end