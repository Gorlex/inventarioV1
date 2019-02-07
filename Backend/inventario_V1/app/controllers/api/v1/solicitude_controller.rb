module Api
	module V1 #V1 con V mayuscula
		class SolicitudeController < ApplicationController
			def index
				solicitude = Solicitude.order('created_at DESC');
				render json: {status: 'SUCCESS', message: 'Loaded solicitudes', data: solicitude}, status: :ok
			end #end index
			def show #hace busqueda por id en la BD de solicitude
				solicitude = Solicitude.find(params[:id])
				
				render json: {status: 'SUCCESS', message: 'Loaded solicitude', data: solicitude}, status: :ok
			end #end show
			def create
				solicitude = Solicitude.new(solicitude_params)

				if solicitude.save
				render json: {status: 'SUCCESS', message: 'Saved solicitude', data: solicitude}, status: :ok
				else 
				render json: {status: 'ERROR', message: 'Solicitude not saved', data: solicitude.errors}, status: :unprocessable_entity
			end #end if

			end #end create
			
			def destroy #funcion para eliminar registro en la BD
			solicitude = Solicitude.find(params[:id])
			solicitude.destroy
			render json: {status: 'SUCCESS', message: 'Deleted solicitude', data: solicitude}, status: :ok

			end #end destroy

			def update #actualiza o modifica registro en BD
				solicitude = Solicitude.find(params[:id])
				if solicitude.update_attributes(solicitude_params)
				render json: {status: 'SUCCESS', message: 'Updated solicitude', data: solicitude}, status: :ok
				else
				render json: {status: 'ERROR', message: 'solicitude not Updated', data: solicitude.errors}, status: :unprocessable_entity
				end #end if

			end #end update

			private

				def solicitude_params
					params.permit(:nombre_repor, :area, :ubicacion,:fecha_soli)
				end #end solicitude_params

		end
	end
end