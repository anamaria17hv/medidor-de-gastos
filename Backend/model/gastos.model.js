
const  db =require("../config/db")

class GastosModel{ 
    static async consultarGastos(){
        const [resultados] =await db.query("SElECT *FROM  gastos")
        //[datos][metadatos]
    console.log(resultados)
    return resultados
    
}

    
}

module.exports = GastosModel
