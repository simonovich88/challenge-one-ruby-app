class Carta
    attr_accessor :numero, :pinta
    def initialize(numero, pinta)

        if !(1..13).include?(numero)
            raise ArgumentError, 'Constructor el numero no esta entre 1 y 13'                 
        end 

        if !['C','D','E','T'].include?(pinta)
            raise ArgumentError, 'Constructor la pinta no es C, D, E ni T'
        end 

        @numero = numero
        @pinta = pinta       
    end

    def numero=(numero)
        if !(1..13).include?(numero)
            raise ArgumentError, 'setter El numero no esta entre 1 y 13'
        end
        @numero = numero
    end

    def pinta=(pinta)
        
        if ['C','D','E','T'].include?(pinta)
            raise ArgumentError, 'setter La pinta no es C, D, E ni T'
        end 
        @pinta = pinta  
    end
    def self.numero_var
        Random.rand(1..13)
    end

    def self.pinta_carta
      ['C','D','E','T'].sample
    end

end

array = []
5.times do
    pinta1 = Carta.pinta_carta
    numero1 = Carta.numero_var
    Carta.new(numero1, pinta1)
    array.push Carta.new(numero1, pinta1)
      
end
print array

carta2= Carta.new(10, 'C')
carta2.numero = 40

