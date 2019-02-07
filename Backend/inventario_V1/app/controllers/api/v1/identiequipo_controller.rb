module Api
	module V1 #V1 con V mayuscula
		class IdentiequipoController < ApplicationController
			def index
				identiequipo = Identiequipo.order('created_at DESC');
				render json: {status: 'SUCCESS', message: 'Loaded identiequipos', data: identiequipo}, status: :ok
			end #end index
			def show #hace busqueda por id en la BD de identiequipo
				identiequipo = Identiequipo.find(params[:id])
				
				render json: {status: 'SUCCESS', message: 'Loaded identiequipo', data: identiequipo}, status: :ok
			end #end show
			def create
				identiequipo = Identiequipo.new(identiequipo_params)

				if identiequipo.save
				render json: {status: 'SUCCESS', message: 'Saved identiequipo', data: identiequipo}, status: :ok
				else 
				render json: {status: 'ERROR', message: 'Identiequipo not saved', data: identiequipo.errors}, status: :unprocessable_entity
			end #end if

			end #end create
			
			def destroy #funcion para eliminar registro en la BD
			identiequipo = Identiequipo.find(params[:id])
			identiequipo.destroy
			render json: {status: 'SUCCESS', message: 'Deleted identiequipo', data: identiequipo}, status: :ok

			end #end destroy

			def update #actualiza o modifica registro en BD
				identiequipo = Identiequipo.find(params[:id])
				if identiequipo.update_attributes(identiequipo_params)
				render json: {status: 'SUCCESS', message: 'Updated identiequipo', data: identiequipo}, status: :ok
				else
				render json: {status: 'ERROR', message: 'identiequipo not Updated', data: identiequipo.errors}, status: :unprocessable_entity
				end #end if

			end #end update

			private

				def identiequipo_params
					params.permit(:marca, :modelo, :serie, :inventario, :placa)
				end #end identiequipo_params

		end
	end
end