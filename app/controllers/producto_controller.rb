class ProductoController < ApplicationController
    def agregar
    end

    def guardar
        producto  = Producto.new
        producto.nombre_producto = params[:nombre_producto]
        producto.precio = params[:precio]
        producto.save
        redirect_to "/producto/"
    end

    def todos
        @productos = Producto.all
    end

    def eliminar
		producto = Producto.find(params[:id])
		producto.destroy
		redirect_to "/producto/"
    end
    
    def modificar
        @producto = Producto.find(params[:id])
    end
    
    def actualizar
        producto = Producto.find(params[:id])
		producto.nombre_producto = params[:nombre_producto]
		producto.precio = params[:precio]
		producto.save
		redirect_to "/producto/"
	end
end

