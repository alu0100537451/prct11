require "../lib/gcd.rb"

class Racional
	include Comparable

	def initialize(numerador, denominador)
		@numerador = numerador
		@denominador = denominador
	end
	attr_reader :numerador, :denominador

#####String
	def to_s
                "#{@numerador}/#{@denominador}"
        end
#####Calcular la suma	
	def +(other)
                if (@denominador == other.denominador )
                        nume=@numerador + other.numerador
                        deno=@denominador
                        mcd=gcd(nume,deno)
                else
                        aux= @denominador * other.denominador
                        nume = ((aux / @denominador ) * @numerador) + ((aux / other.denominador ) * other.numerador)
                        deno = @denominador*other.denominador
                        mcd=gcd(nume,deno)
                end
                
                temp = Racional.new(nume/mcd, deno/mcd)
        end

#####Calcular la resta	
	def -(other)
                if (@denominador == other.denominador )
                        nume=@numerador - other.numerador
                        deno=@denominador
                        mcd=gcd(nume,deno)
                
                else
                        aux= @denominador * other.denominador
                        nume = ((aux / @denominador ) * @numerador) - ((aux / other.denominador ) * other.numerador)
                        deno=@denominador*other.denominador
                        mcd=gcd(nume,deno)
                
                end
                
                
                temp = Racional.new(nume/mcd, deno/mcd)
        end

#####Calcular el producto
	 def * (other)
                nume = @numerador * other.numerador
                deno = @denominador * other.denominador
                mcd=gcd(nume,deno)
                temp = Racional.new(nume / mcd ,deno / mcd )
        
        end

#####Calcular la division
        def / (other)
        
                nume = @numerador *other.denominador
                deno = @denominador * other.numerador
                mcd= gcd(nume,deno)
                temp = Racional.new(nume/mcd, deno/mcd )
        
        end

#####Devolver el numerador
	def num 
		@numerador
	end

#####Devolver el denominador
	def denom 
		@denominador		
	end

#####Flotante
	def to_f
		flotante = numerador.to_f/denominador
	end

#####Calcular el absoluto de la fraccion	
	def abs
		absnum = numerador.abs
		absdenom = denominador.abs
		abs = Racional.new(absnum, absdenom)
	end

#####Calcular el resto
	def % (other)
		nume = @numerador * other.denominador
                deno = @denominador * other.numerador
                mcd  = gcd(nume,deno)

		temp = ((nume/mcd) % (deno/mcd))
		

	end

#####Calcular el reciproco de la fraccion	
	def reciprocal
		Racional.new(@denominador,@numerador)
	end

#####Calcular el opuesto de la fraccion
	def -@
		negado = Racional.new(-denominador, numerador)
	end

	def <=> (other)
		if other.instance_of? Racional
			return (numerador.to_f/denominador)<=>(other.numerador.to_f/other.denominador)
		else
			false
	end
       
end
end
