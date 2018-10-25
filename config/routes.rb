Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	get 'cliente/nuevo'
	post 'cliente/crear'
	get 'cliente/registros'
	get '/cliente/eliminar/:id', to: 'cliente#eliminar'
	get '/cliente/consultar/:id', to: 'cliente#consultar'
	post 'cliente/modificar/:id', to: 'cliente#modificar'

	get 'producto/nuevo'
	post 'producto/crear'
	get 'producto/registros'
	get '/producto/eliminar/:id', to: 'producto#eliminar'
	get '/producto/consultar/:id', to: 'producto#consultar'
	post 'producto/modificar/:id', to: 'producto#modificar'

	get 'orden/nueva'
	post 'orden/crear'
	get 'orden/registros'
	get '/orden/eliminar/:id', to: 'orden#eliminar'
	get '/orden/consultar/:id', to: 'orden#consultar'
	post 'orden/modificar/:id', to: 'orden#modificar'

	get '/', to: 'orden#registros'
end
