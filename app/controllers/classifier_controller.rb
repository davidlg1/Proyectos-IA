class ClassifierController < ApplicationController
  def consultas
  	@sentencia = params[:consulta]
  	b = Classifier::Bayes.new 'SoporteTecnico', 'Comercial'
    @lista_soporte = []
  	@soporte = SoporteTecnico.all
    i = 0
  	@soporte.each do |s|
  		b.train_SoporteTecnico s.consulta
      @lista_soporte[i] = s.consulta
      i+=1
  	end
    @lista_comercial = []
  	@comercial = Comercial.all
    i = 0
  	@comercial.each do |c|
  		b.train_Comercial c.consulta
      @lista_comercial [i] = c.consulta
      i+=1
  	end

  	if @sentencia != nil
  		@resultado = b.classify @sentencia
      if @resultado == "Soportetecnico"
        SoporteTecnico.create(consulta: @sentencia)
      elsif @resultado == "Comercial"
        Comercial.create(consulta: @sentencia)
      end
  	end

    if @lista_comercial.length >= @lista_soporte.length
      @mayor = @lista_comercial.length
    else
      @mayor = @lista_soporte.length
    end 

  end
end
