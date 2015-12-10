class Order
    attr_accessor :title, :description, :status, :local
    
    def initialize
        @title = "ITS A MACHINE WITH PROBLEM!"
        @description = "A MACHINE CAN'T TURN ON - FORCE CABLE WITH PROBLEM"
        @local = "CCSA - ROOM 151"
        @status = "ATIVO"
    end
    
end