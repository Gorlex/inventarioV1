module Api
	module V1 #V1 con V mayuscula
		class EmpresaController < ApplicationController
			def index
				empresa = Empresa.order('created_at DESC');
				#render json: {status: 'SUCCESS', message: 'Loaded empresas', data: empresa}, status: :ok
				render json: contrato, status: :ok
			end #end index
			def show #hace busqueda por id en la BD de empresa
				empresa = Empresa.find(params[:id])
				
				#render json: {status: 'SUCCESS', message: 'Loaded empresa', data: empresa}, status: :ok
				render json: contrato, status: :ok
			end #end show
			def create
				empresa = Empresa.new(empresa_params)

				if empresa.save
				#render json: {status: 'SUCCESS', message: 'Saved empresa', data: empresa}, status: :ok
				render json: contrato, status: :ok
				else 
				#render json: {status: 'ERROR', message: 'Empresa not saved', data: empresa.errors}, status: :unprocessable_entity
				render json: contrato, status: :unprocessable_entity
			end #end if

			end #end create
			
			def destroy #funcion para eliminar registro en la BD
			empresa = Empresa.find(params[:id])
			empresa.destroy
			#render json: {status: 'SUCCESS', message: 'Deleted empresa', data: empresa}, status: :ok
			render json: contrato, status: :ok

			end #end destroy

			def update #actualiza o modifica registro en BD
				empresa = Empresa.find(params[:id])
				if empresa.update_attributes(empresa_params)
				#render json: {status: 'SUCCESS', message: 'Updated empresa', data: empresa}, status: :ok
				render json: contrato, status: :ok
				else
				#render json: {status: 'ERROR', message: 'empresa not Updated', data: empresa.errors}, status: :unprocessable_entity
				render json: contrato, status: :unprocessable_entity
				end #end if

			end #end update

			private

				def empresa_params
					params.permit(:empresa, :fecha_empresa)
				end #end empresa_params

		end
	end
end