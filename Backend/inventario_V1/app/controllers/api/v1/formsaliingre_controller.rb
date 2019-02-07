module Api
	module V1 #V1 con V mayuscula
		class FormsaliingreController < ApplicationController
			def index
				formsaliingre = Formsaliingre.order('created_at DESC');
				render json: {status: 'SUCCESS', message: 'Loaded formsaliingres', data: formsaliingre}, status: :ok
			end #end index
			def show #hace busqueda por id en la BD de formsaliingre
				formsaliingre = Formsaliingre.find(params[:id])
				
				render json: {status: 'SUCCESS', message: 'Loaded formsaliingre', data: formsaliingre}, status: :ok
			end #end show
			def create
				formsaliingre = Formsaliingre.new(formsaliingre_params)

				if formsaliingre.save
				render json: {status: 'SUCCESS', message: 'Saved formsaliingre', data: formsaliingre}, status: :ok
				else 
				render json: {status: 'ERROR', message: 'Formsaliingre not saved', data: formsaliingre.errors}, status: :unprocessable_entity
			end #end if

			end #end create
			
			def destroy #funcion para eliminar registro en la BD
			formsaliingre = Formsaliingre.find(params[:id])
			formsaliingre.destroy
			render json: {status: 'SUCCESS', message: 'Deleted formsaliingre', data: formsaliingre}, status: :ok

			end #end destroy

			def update #actualiza o modifica registro en BD
				formsaliingre = Formsaliingre.find(params[:id])
				if formsaliingre.update_attributes(formsaliingre_params)
				render json: {status: 'SUCCESS', message: 'Updated formsaliingre', data: formsaliingre}, status: :ok
				else
				render json: {status: 'ERROR', message: 'formsaliingre not Updated', data: formsaliingre.errors}, status: :unprocessable_entity
				end #end if

			end #end update

			private

				def formsaliingre_params
					params.permit(:fecha_sal_ing, :equipo_id, :area, :concepto, :empresa_id, :contrato_id)
				end #end formsaliingre_params

		end
	end
end