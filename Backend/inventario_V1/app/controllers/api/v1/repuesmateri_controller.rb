module Api
	module V1 #V1 con V mayuscula
		class RepuesmateriController < ApplicationController
			def index
				repuesmateri = Repuesmateri.order('created_at DESC');
				render json: {status: 'SUCCESS', message: 'Loaded repuesmateris', data: repuesmateri}, status: :ok
			end #end index
			def show #hace busqueda por id en la BD de repuesmateri
				repuesmateri = Repuesmateri.find(params[:id])
				
				render json: {status: 'SUCCESS', message: 'Loaded repuesmateri', data: repuesmateri}, status: :ok
			end #end show
			def create
				repuesmateri = Repuesmateri.new(repuesmateri_params)

				if repuesmateri.save
				render json: {status: 'SUCCESS', message: 'Saved repuesmateri', data: repuesmateri}, status: :ok
				else 
				render json: {status: 'ERROR', message: 'Repuesmateri not saved', data: repuesmateri.errors}, status: :unprocessable_entity
			end #end if

			end #end create
			
			def destroy #funcion para eliminar registro en la BD
			repuesmateri = Repuesmateri.find(params[:id])
			repuesmateri.destroy
			render json: {status: 'SUCCESS', message: 'Deleted repuesmateri', data: repuesmateri}, status: :ok

			end #end destroy

			def update #actualiza o modifica registro en BD
				repuesmateri = Repuesmateri.find(params[:id])
				if repuesmateri.update_attributes(repuesmateri_params)
				render json: {status: 'SUCCESS', message: 'Updated repuesmateri', data: repuesmateri}, status: :ok
				else
				render json: {status: 'ERROR', message: 'repuesmateri not Updated', data: repuesmateri.errors}, status: :unprocessable_entity
				end #end if

			end #end update

			private

				def repuesmateri_params
					params.permit(:item, :descripcion, :unidad, :cantidad)
				end #end repuesmateri_params

		end
	end
end