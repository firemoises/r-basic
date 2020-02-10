
calcular_fecha_ensegundos = function(x){

  segundos = x
  minutos = x/60
  horas = minutos/60
  dias = horas/24
  meses = dias/30.4375 #Para tener en cuenta los bisiestos
  anos = meses/12
  
  ano_respuesta = (meses%/%12) + 2018 #Los anos reales
  mes_respuesta = trunc((meses%%12))
  dia_respuesta = trunc(dias%%30.4375) 
  
  hora_respuesta = trunc(horas%%24) 
  minutos_respuesta = trunc(minutos%%60) 
  segundos_respuesta = trunc(x%%60)
  
  
  print(paste("El ano es",ano_respuesta))
  print(paste("de mes",mes_respuesta))
  print(paste("En el dia",dia_respuesta))
  print(paste("A las:",hora_respuesta,":",minutos_respuesta,":",segundos_respuesta))
  
}

calcular_fecha_ensegundos(250000000)
