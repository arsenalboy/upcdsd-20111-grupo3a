<h1>Introducción</h1>

<b>Servicio de Lista de Candidatos (Productor)</b>
<br />
Será un Web Service que brinda la lista de candidatos al Módulo Web de Cédula Electrónica.
<br />
<b>Parametros:</b> Ninguno
<br />
<b>Retorno:</b> Listado de candidatos.
<br />

<b>Servicio de Lista de Electores(Productor)</b>
<br />
Será un Web Service que brinda la lista de electores al Módulo de Cédula Electrónica.
<br />
<b>Parametros:</b> Ninguno.
<br />
<b>Retorno:</b>Listado de Electores Hábiles.
<br />

<b>Servicio de Registro de Voto</b>
<br />
Será una cola que reciba el voto y lo registre.
<br />
<b>Parametros:</b>Entidad Voto.
<br />
<b>Retorno:</b>Ninguno.
<br />

<b>Servicio de Generación de Resultados</b>
<br />
Será un método que permitirá ver los resultados oficiales al termino de la votación.
<br />
<b>Parametros:</b>Ninguno.
<br />
<b>Retorno: </b>Entidad con resultados de la votación.
<br />

<b>Módulo de Cédula Electrónica</b>
<br />
Será un formulario que capture el voto y lo envíe a una cola para su posterior registro. Para ello hará uso de los servicios del nodo 1 y 2. Una vez que el usuario registre su voto, dichos datos viajarán al nodo 3 y por último para consultar los resultados hará uso del nodo 4.
<br />
<b>Parametros:</b>Los Ingresados por el usuario.
<br />
<b>Retorno:</b>Flag indicando que el voto ha sido efectuado
correctamente.
<br />

<b>Servicio de Monto de Multa</b>

Será un método que calcule el monto total de la multa.
<br />
<b>Parametros:</b> Cantidad de personas que votaron y cantidad total de electores.
<br />
<b>Retorno:</b> Monto total de la multa.
