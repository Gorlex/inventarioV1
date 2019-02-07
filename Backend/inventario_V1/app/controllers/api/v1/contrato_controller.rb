module Api
	module V1 #V1 con V mayuscula
		class ContratoController < ApplicationController
			def index
				contrato = Contrato.order('created_at DESC');
				render json: {status: 'SUCCESS', message: 'Loaded contratos', data: contrato}, status: :ok
			end #end index
			def show #hace busqueda por id en la BD de contrato
				contrato = Contrato.find(params[:id])
				
				render json: {status: 'SUCCESS', message: 'Loaded contrato', data: contrato}, status: :ok
			end #end show
			def create
				contrato = Contrato.new(contrato_params)

				if contrato.save
				render json: {status: 'SUCCESS', message: 'Saved contrato', data: contrato}, status: :ok
				else 
				render json: {status: 'ERROR', message: 'Contrato not saved', data: contrato.errors}, status: :unprocessable_entity
			end #end if

			end #end create
			
			def destroy #funcion para eliminar registro en la BD
			contrato = Contrato.find(params[:id])
			contrato.destroy
			render json: {status: 'SUCCESS', message: 'Deleted contrato', data: contrato}, status: :ok

			end #end destroy

			def update #actualiza o modifica registro en BD
				contrato = Contrato.find(params[:id])
				if contrato.update_attributes(contrato_params)
				render json: {status: 'SUCCESS', message: 'Updated contrato', data: contrato}, status: :ok
				else
				render json: {status: 'ERROR', message: 'contrato not Updated', data: contrato.errors}, status: :unprocessable_entity
				end #end if

			end #end update

			private

				def contrato_params
					params.permit(:contrato, :fecha_contrato)
				end #end contrato_params

		end
	end
end