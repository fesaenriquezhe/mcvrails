class ClienteController < ApplicationController

	def nuevo
	end

	def crear
		cliente = Cliente.new
		cliente.rfc = params[:rfc]
		cliente.nombre_cliente = params[:nombre_cliente]
		cliente.save
		redirect_to "/cliente/registros"
	end

	def registros
		@clientes = Cliente.all
	end

	def eliminar
		cliente = Cliente.find(params[:id])
		cliente.destroy
		redirect_to "/cliente/registros"
	end

	def consultar
		@cliente = Cliente.find(params[:id])
	end

	def modificar
		cliente = Cliente.find(params[:id])
		cliente.rfc = params[:rfc]
		cliente.nombre_cliente = params[:nombre_cliente]
		cliente.save
		redirect_to "/cliente/registros"
	end
end
