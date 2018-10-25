class OrdenController < ApplicationController
    def nueva
        @clientes = Cliente.all 
        @productos=Producto.all 
    end

    def crear
        orden  = Orden.new
        orden.cliente_id = params[:id_cliente]
        orden.producto_id = params[:id_producto]
        orden.unidad = params[:unidades]
        orden.save
        redirect_to "/orden/registros"
    end

    def registros
        @ordenes = Orden.all
    end

    def eliminar
        orden = Orden.find(params[:id])
        orden.destroy
        redirect_to "/orden/registros"
    end

    def consultar
        @orden = Orden.find(params[:id])
        @clientes = Cliente.all 
        @productos=Producto.all 
    end
    
    def modificar
        orden = Orden.find(params[:id])
        orden.cliente_id = params[:id_cliente]
        orden.producto_id = params[:id_producto]
        orden.unidad = params[:unidades]
        orden.save
        redirect_to "/orden/registros"
    end

end
