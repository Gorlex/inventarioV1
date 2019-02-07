module Api
	module V1 #V1 con V mayuscula
		class RecoobserController < ApplicationController
			def index
				recoobser = Recoobser.order('created_at DESC');
				render json: {status: 'SUCCESS', message: 'Loaded recoobsers', data: recoobser}, status: :ok
			end #end index
			def show #hace busqueda por id en la BD de recoobser
				recoobser = Recoobser.find(params[:id])
				
				render json: {status: 'SUCCESS', message: 'Loaded recoobser', data: recoobser}, status: :ok
			end #end show
			def create
				recoobser = Recoobser.new(recoobser_params)

				if recoobser.save
				render json: {status: 'SUCCESS', message: 'Saved recoobser', data: recoobser}, status: :ok
				else 
				render json: {status: 'ERROR', message: 'Recoobser not saved', data: recoobser.errors}, status: :unprocessable_entity
			end #end if

			end #end create
			
			def destroy #funcion para eliminar registro en la BD
			recoobser = Recoobser.find(params[:id])
			recoobser.destroy
			render json: {status: 'SUCCESS', message: 'Deleted recoobser', data: recoobser}, status: :ok

			end #end destroy

			def update #actualiza o modifica registro en BD
				recoobser = Recoobser.find(params[:id])
				if recoobser.update_attributes(recoobser_params)
				render json: {status: 'SUCCESS', message: 'Updated recoobser', data: recoobser}, status: :ok
				else
				render json: {status: 'ERROR', message: 'recoobser not Updated', data: recoobser.errors}, status: :unprocessable_entity
				end #end if

			end #end update

			private

				def recoobser_params
					params.permit(:recomen_observa)
				end #end recoobser_params

		end
	end
end