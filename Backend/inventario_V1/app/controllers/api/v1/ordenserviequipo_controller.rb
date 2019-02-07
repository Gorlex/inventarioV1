module Api
	module V1 #V1 con V mayuscula
		class OrdenserviequipoController < ApplicationController
			def index
				ordenserviequipo = Ordenserviequipo.order('created_at DESC');
				render json: {status: 'SUCCESS', message: 'Loaded ordenserviequipos', data: ordenserviequipo}, status: :ok
			end #end index
			def show #hace busqueda por id en la BD de ordenserviequipo
				ordenserviequipo = Ordenserviequipo.find(params[:id])
				
				render json: {status: 'SUCCESS', message: 'Loaded ordenserviequipo', data: ordenserviequipo}, status: :ok
			end #end show
			def create
				ordenserviequipo = Ordenserviequipo.new(ordenserviequipo_params)

				if ordenserviequipo.save
				render json: {status: 'SUCCESS', message: 'Saved ordenserviequipo', data: ordenserviequipo}, status: :ok
				else 
				render json: {status: 'ERROR', message: 'Ordenserviequipo not saved', data: ordenserviequipo.errors}, status: :unprocessable_entity
			end #end if

			end #end create
			
			def destroy #funcion para eliminar registro en la BD
			ordenserviequipo = Ordenserviequipo.find(params[:id])
			ordenserviequipo.destroy
			render json: {status: 'SUCCESS', message: 'Deleted ordenserviequipo', data: ordenserviequipo}, status: :ok

			end #end destroy

			def update #actualiza o modifica registro en BD
				ordenserviequipo = Ordenserviequipo.find(params[:id])
				if ordenserviequipo.update_attributes(ordenserviequipo_params)
				render json: {status: 'SUCCESS', message: 'Updated ordenserviequipo', data: ordenserviequipo}, status: :ok
				else
				render json: {status: 'ERROR', message: 'ordenserviequipo not Updated', data: ordenserviequipo.errors}, status: :unprocessable_entity
				end #end if

			end #end update

			private

				def ordenserviequipo_params
					params.permit(:solici_id, :equipo_id, :razon_id, :recibido_id, :diagnostico_id, :labor_id, :entrega_equi_id, :nombre_pers1, :nombre_pers2, :nombre_pers3, :visto_inge, :nom_cargo_recibe, :fecha_orden, :recomenda_id, :mate_id)
				end #end ordenserviequipo_params

		end
	end
end