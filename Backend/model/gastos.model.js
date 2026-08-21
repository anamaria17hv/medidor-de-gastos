
const  db =require("..")

class GastoModel{ 
    static async consultarGastos(){
        const resultados =await db.query("SElECT *FROM  gastos")
    console.log(resultados)
    return resultados
    
}

    
}

const prueba =GastoModel
prueba.consultarGastos()