class ClienteController < ApplicationController

	def agregar
	end

	def guardar
		cliente = Cliente.new
		cliente.rfc = params[:rfc]
		cliente.nombre_cliente = params[:nombre_cliente]
		cliente.save
		redirect_to "/cliente/"
	end

	def todos
		@clientes = Cliente.all
	end

	def eliminar
		cliente = Cliente.find(params[:id])
		cliente.destroy
		redirect_to "/cliente/"
	end

	def modificar
		@cliente = Cliente.find(params[:id])
	end

	def actualizar
		cliente = Cliente.find(params[:id])
		cliente.rfc = params[:rfc]
		cliente.nombre_cliente = params[:nombre_cliente]
		cliente.save
		redirect_to "/cliente/"
	end
end
