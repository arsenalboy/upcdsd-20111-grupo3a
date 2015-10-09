<h1>Sistema de Voto Electrónico</h1>
<b>Introducción</b>
<br />

Sistema de Simulación de Votación Electrónica y Consulta de Resultados.
<br />
<b>Nodos</b>

Estará compuesto por cinco (5) nodos que son los siguientes:

<b>Nodo1: RENIEC - Servicio de Lista de Electores (Productor)</b><br>
Será un Web Service que brinda la lista de electores al Módulo Web de Cédula Electrónica.<br>
Parametros: Ningun.o<br>
Retorno: Array List de Beans Electores Hábiles.<br><br>

<b> Nodo2: ONPE - Servicio de Lista de candidatos(Productor)</b><br>
Será un Web Service que brinda la lista de candidatos al Módulo de Cédula Electrónica.<br>
Parametros: Ninguno.<br>
Retorno: Array List de Beans Candidatos.<br><br>

<b> Nodo3: ONPE - Servicio de Registro de Voto</b><br>
Será una cola que reciba el voto y lo registre.<br>
Parametros:Bean Voto.<br>
Retorno: Ninguno.<br><br>

<b> Nodo4: ONPE - Servicio de Generación de Resultados</b><br>
Será un método que permitirá ver los resultados oficiales al termino de la votación.<br>
Parametros:Ninguno.<br>
Retorno: Bean con resultados de la votación.<br><br>

<b>Nodo5: ONPE - Módulo de Cédula Electrónica</b><br>
Será un formulario que capture el voto y lo envíe a una cola para su posterior registro. Para ello hará uso de los servicios del nodo 1 y 2. Una vez que el usuario registre su voto, dichos datos viajarán al nodo 3 y por último para consultar los resultados hará uso del nodo 4.<br>
Parametros:Los Ingresados por el usuario.<br>
Retorno: Flag indicando que el voto ha sido efectuado correctamente.<br><br>

<b>Nodo6: BN - Servicio de Monto de Multa</b><br>
Será un método que calcule el monto total de la multa.<br>
Parametros: Cantidad de personas que votaron y cantidad total de electores.<br>
Retorno: Monto total de la multa.<br><br>