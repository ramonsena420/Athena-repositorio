var express = require("express");
var router = express.Router();
const {body, validationResult } = require("express-validator");

router.get("/", function (req, res){
    res.render("pages/home", {retorno: null, erros: null, })}
);

router.get("/cadastro", function(req, res){
    res.render("pages/cadastro", {retorno: null, erros: null, valores: {"t-nome":"","t-email":"", "t-senha":"","t-confsenha":""}})}
);


router.get("/home", function(req, res){
    res.render("pages/home", {retorno: null, erros: null})}
);

router.get("/login", function(req, res){
    res.render("pages/login", {retorno: null, erros: null,  valores: {"t-senha":"","t-email":""}})}
);

router.get("/produto", function(req, res){
    res.render("pages/produto", {retorno: null, erros: null})}
);

router.post("/produto", function(req, res){
    res.json(req.body)
});

router.post( 
    "/cadastro",
    body("d-cadastro"),
    body("t-nome").isInt({min: 3, max: 40})
    .withMessage("O nome deve ter no minimo 3 caracteres"),
    body("t-email").isEmail({min: 5, max: 50})
    .withMessage("O email deve ser válido"),
    body("t-senha").isInt({min: 4, max: 15})
    .withMessage("A senha deve ser válida"),
    body("t-confsenha").isInt({min: 4, max: 15})
    .withMessage("A senha deve ser a mesma que a anterior"),

    function (req, res){
        const errors = validationResult(req)
        if(!errors.isEmpty()){
            console.log(errors);
            return res.render("pages/cadastro", {retorno: null, erros: errors, valores: req.body});
        }
        let senha = req.body.t-senha
        let confirmar = req.body.t-confsenha
        if(senha == confirmar){
            res.render("pages/home", {retorno: null, erros: null, valores: req.body});
        }else{
            "As duas senhas tem que ser iguais >:("
        }
    }
)

router.post(
    "/login",
    body("d-login"),
    body("t-email").isEmail({min:5, max:50})
    .withMessage("O email deve ser válido"),
    body("t-senha").isInt({min: 4, max: 15})
    .withMessage("A senha deve ser válida"),

    function(req, res){
        const errors = validationResult(req)
        if(!errors.isEmpty()){
            console.log(errors);
            return res.render("pages/home", {retorno: null, erros: errors, valores: req.body});
        }
    }
)

module.exports = router