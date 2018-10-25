class ProductoController < ApplicationController
    def nuevo
    end

    def crear
        producto  = Producto.new
        producto.nombre_producto = params[:nombre_producto]
        producto.precio = params[:precio]
        producto.save
        redirect_to "/producto/registros"
    end

    def registros
        @productos = Producto.all
    end

    def eliminar
		producto = Producto.find(params[:id])
		producto.destroy
		redirect_to "/producto/registros"
    end
    
    def consultar
        @producto = Producto.find(params[:id])
    end
    
    def modificar
        producto = Producto.find(params[:id])
		producto.nombre_producto = params[:nombre_producto]
		producto.precio = params[:precio]
		producto.save
		redirect_to "/producto/registros"
	end
end

