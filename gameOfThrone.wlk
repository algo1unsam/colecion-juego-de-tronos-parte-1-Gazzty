object daenerys{
	var cant_artefactos = 2
	const property artefactos = []
	const casa = rocadragon
	const property historial_artefactos = []

	method agregar_artefacto(_art){
		// Se agrega al historial
		historial_artefactos.add(_art)
		if(artefactos.size() < cant_artefactos){
			artefactos.add(_art)
		}else{
			return "Cantidad límite de artefactos alcanzada!"
		}
	}
	method dejar_rocadragon(){
		casa.guardar_artefacto(artefactos)
		artefactos.clear()
	}

	// Ver todos los objetos en la rocadragon y en inventario
	method artefactos_all(){
		return casa.artefactos() + artefactos
	}
	// Ver artefacto en especifico sin importar donde este
	method buscar_artefacto(art){
		return casa.artefactos().filter{x=>x==art} + artefactos.filter{x=>x==art}
	}
}

object espada_dragon{}
object libro_magia{}
object collar_fuego{}
object armadura_valyrio{}

object rocadragon{
	const property artefactos = []

	method guardar_artefacto(art){
		if(art.size() <= 0){return "Nada para guardar"}
		else{
			artefactos.addAll(art)
		}
	}
}
