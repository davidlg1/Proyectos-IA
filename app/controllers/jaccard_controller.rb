class JaccardController < ApplicationController
  def productos
  	@nombre_producto = params[:nombre_producto]
  	@descripcion_producto = params[:descripcion_producto]
  	if @nombre_producto != "" and @descripcion_producto != ""
  		@mensaje_error = "Guardado..."
  		Producto.create(nombre: @nombre_producto, descripcion: @descripcion_producto)
  	else
  		@mensaje_error = "Datos incompletos"
    end

    @productos = Producto.all
    @ultimo = Producto.last.descripcion
    tmp2 = @ultimo.split(',')
    @arreglo = []
    @i=0
    @productos.each do |p|
      tmp = p.descripcion.split(',')
      coeficiente = Jaccard.coefficient(tmp, tmp2)
      @arreglo [@i] = [p.id, p.nombre, tmp, coeficiente]
      @i += 1
    end

    @arreglo = @arreglo.sort_by { |a| -a[3]}
	
  end
end
