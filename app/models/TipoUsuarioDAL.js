module.exports = class TipoUsuarioDAL {

    constructor(conexao) {
        this.conexao = conexao;
    }

    findAll() {
        return new Promise((resolve, reject) => {
            this.conexao.query('SELECT * FROM tipo_usu where status_tipo_usu = 1', function (error, elements) {
                if (error) {
                    return reject(error);
                }
                return resolve(elements);
            });
        });
    };

    findID(id) {
        return new Promise((resolve, reject) => {
            this.conexao.query("select*from tipo_usu where id_tipo_usu")
        })
    }
}