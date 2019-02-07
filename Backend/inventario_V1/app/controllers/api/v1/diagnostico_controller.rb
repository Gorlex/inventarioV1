module Api
	module V1 #V1 con V mayuscula
		class DiagnosticoController < ApplicationController
			def index
				diagnostico = Diagnostico.order('created_at DESC');
				render json: {status: 'SUCCESS', message: 'Loaded diagnosticos', data: diagnostico}, status: :ok
			end #end index
			def show #hace busqueda por id en la BD de diagnostico
				diagnostico = Diagnostico.find(params[:id])
				
				render json: {status: 'SUCCESS', message: 'Loaded diagnostico', data: diagnostico}, status: :ok
			end #end show
			def create
				diagnostico = Diagnostico.new(diagnostico_params)

				if diagnostico.save
				render json: {status: 'SUCCESS', message: 'Saved diagnostico', data: diagnostico}, status: :ok
				else 
				render json: {status: 'ERROR', message: 'Diagnostico not saved', data: diagnostico.errors}, status: :unprocessable_entity
			end #end if

			end #end create
			
			def destroy #funcion para eliminar registro en la BD
			diagnostico = Diagnostico.find(params[:id])
			diagnostico.destroy
			render json: {status: 'SUCCESS', message: 'Deleted diagnostico', data: diagnostico}, status: :ok

			end #end destroy

			def update #actualiza o modifica registro en BD
				diagnostico = Diagnostico.find(params[:id])
				if diagnostico.update_attributes(diagnostico_params)
				render json: {status: 'SUCCESS', message: 'Updated diagnostico', data: diagnostico}, status: :ok
				else
				render json: {status: 'ERROR', message: 'diagnostico not Updated', data: diagnostico.errors}, status: :unprocessable_entity
				end #end if

			end #end update

			private

				def diagnostico_params
					params.permit(:diagnostico)
				end #end diagnostico_params

		end
	end
end