Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	get 'cliente/agregar'
	post 'cliente/guardar'
	get 'cliente/', to: 'cliente#todos'
	get '/cliente/eliminar/:id', to: 'cliente#eliminar'
	get '/cliente/modificar/:id', to: 'cliente#modificar'
	post 'cliente/actualizar/:id', to: 'cliente#actualizar'

	get 'producto/agregar'
	post 'producto/guardar'
	get 'producto/', to: 'producto#todos'
	get '/producto/eliminar/:id', to: 'producto#eliminar'
	get '/producto/modificar/:id', to: 'producto#modificar'
	post 'producto/actualizar/:id', to: 'producto#actualizar'

	get 'orden/agregar'
	post 'orden/guardar'
	get 'orden/', to: 'orden#todos'
	get '/orden/eliminar/:id', to: 'orden#eliminar'
	get '/orden/modificar/:id', to: 'orden#modificar'
	post 'orden/actualizar/:id', to: 'orden#actualizar'

	get '/', to: 'orden#todos'
end
