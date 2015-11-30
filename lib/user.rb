class User
    attr_accessor :name, :password, :tipo, :email, :cpf
    
    def initialize
        @name = "Neto"
        @tipo = "Administrador"
        @cpf = "108843"
        @password = "12345678910"
        @email = "jbsn@cin.ufpe"
    end
end