module.exports = class UsuarioDAL {

    constructor(conexao){
        this.conexao = conexao;
    }
    
    findAll(){
        return new Promise((resolve, reject) => {
            this.conexao.query("SELECT u.id_usu, u.nome_usu, u.user_usu, " + "u.status.usu, u.email_usu, u.tel_usu, u.tipo_usu "+ "u.tipo_usu = t.id_tipo_usu", function (error, elements){
                if (error){
                    return reject(error);
                }
                return resolve(elements);
            });
        });
    };

}