Rails.application.routes.draw do
	namespace 'api' do
		namespace 'v1' do #se agrgega cada nombre para la ruta y funcione el controlador
			resources :contrato
			resources :diagnostico
			resources :empresa
			resources :entregaequipo
			resources :formsaliingre
			resources :identiequipo
			resources :laborejecutada
			resources :ordenserviequipo
			resources :razonsoliservi
			resources :recibidoareaequipo
			resources :recoobser
			resources :repuesmateri
			resources :solicitude
						
		end
	end
end