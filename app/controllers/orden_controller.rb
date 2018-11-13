class OrdenController < ApplicationController
    def agregar
        @clientes = Cliente.all 
        @productos=Producto.all 
    end

    def guardar
        orden  = Orden.new
        orden.cliente_id = params[:id_cliente]
        orden.producto_id = params[:id_producto]
        orden.unidad = params[:unidades]
        orden.save
        redirect_to "/orden/"
    end

    def todos
        @ordenes = Orden.all
    end

    def eliminar
        orden = Orden.find(params[:id])
        orden.destroy
        redirect_to "/orden/"
    end

    def modificar
        @orden = Orden.find(params[:id])
        @clientes = Cliente.all 
        @productos=Producto.all 
    end
    
    def actualizar
        orden = Orden.find(params[:id])
        orden.cliente_id = params[:id_cliente]
        orden.producto_id = params[:id_producto]
        orden.unidad = params[:unidades]
        orden.save
        redirect_to "/orden/"
    end

end
