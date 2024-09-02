 Feature: Solicitud de recogida de productos

  Scenario: Crear una solicitud de recogida válida
    Given el cliente proporciona la siguiente información:
      | tipoEnvio       | 1      |
      | tipoProducto    | 4      |
      | indicativo      | 57     |
      | tipoDocumento   | 13     |
      | email           | ana@gmail.com |
      | personaEntrega  | 1      |
      | indicativoEntrega | 57   |
      | medidasAproximadas | [{"id": 2, "tipoPaq": "Par de zapatos", "nombrePaq": "Par de zapatos", "cantidad": 1}] |
      | ciudad          | Envigado (Ant) |
      | via             |         |
      | numero          |         |
      | detalle         | PARQUE SAN JOSE BOD 14 |
      | tipoVia         | 16     |
      | nombres         | prueba |
      | apellidos       | prueba1 |
      | documento       | 1036149000 |
      | celular         | 3005777777 |
      | ciudadDetalle   | {"nombre_terminal_operativa": "Medellin", "tipo_servicio": "A", "dane_ciudad": "05266", "dane_actual": "05266000", "ciudad_tarifa": "05266000", "sms": true, "cubre_mqp": true, "codigo_postal": "055428", "terminal_operativa": 2, "cubre_me": true, "area_telefono": 4, "observaciones2": "FCE - RD - FD - RCE", "codigo": "05266000", "tipo_poblacion": "D", "activo": true, "codigo_terminal": 2, "codigo_interno": 204, "mensajeria": true, "cubre_mm": false, "departamento": "05", "cubre_cm": false, "nombre": "Envigado (Ant)", "abreviado": "ENVIGADO", "nombre_terminal": "Medellin", "observaciones": ""} |
      | direccion       | Cl 10 # 20 30 |
      | fechaRecogida   | 2023-12-04 |
      | nombreEntrega   | prueba |
      | apellidosEntrega | prueba1 |
      | celularEntrega  | 3045677777 |
      | emailUsuario    | anar.7@gmail.com |
      | descripcionTipoVia | Kilómetro |
      | aplicativo      | envios |
    When el cliente envía la solicitud de recogida
    Then la solicitud de recogida debe ser creada exitosamente
    And la respuesta debe contener un mensaje de éxito

 
 
 
 
  Scenario: Solicitud de recogida con dirección vacía
    Given el cliente proporciona la siguiente información:
      | tipoEnvio       | 1      |
      | tipoProducto    | 4      |
      | indicativo      | 57     |
      | tipoDocumento   | 13     |
      | email           | ana@gmail.com |
      | personaEntrega  | 1      |
      | indicativoEntrega | 57   |
      | medidasAproximadas | [{"id": 2, "tipoPaq": "Par de zapatos", "nombrePaq": "Par de zapatos", "cantidad": 1}] |
      | ciudad          | Envigado (Ant) |
      | via             |         |
      | numero          |         |
      | detalle         | PARQUE SAN JOSE BOD 14 |
      | tipoVia         | 16     |
      | nombres         | prueba |
      | apellidos       | prueba1 |
      | documento       | 1036149000 |
      | celular         | 3005777777 |
      | ciudadDetalle   | {"nombre_terminal_operativa": "Medellin", "tipo_servicio": "A", "dane_ciudad": "05266", "dane_actual": "05266000", "ciudad_tarifa": "05266000", "sms": true, "cubre_mqp": true, "codigo_postal": "055428", "terminal_operativa": 2, "cubre_me": true, "area_telefono": 4, "observaciones2": "FCE - RD - FD - RCE", "codigo": "05266000", "tipo_poblacion": "D", "activo": true, "codigo_terminal": 2, "codigo_interno": 204, "mensajeria": true, "cubre_mm": false, "departamento": "05", "cubre_cm": false, "nombre": "Envigado (Ant)", "abreviado": "ENVIGADO", "nombre_terminal": "Medellin", "observaciones": ""} |
      | direccion       |         |
      | fechaRecogida   | 2023-12-04 |
      | nombreEntrega   | prueba |
      | apellidosEntrega | prueba1 |
      | celularEntrega  | 3045677777 |
      | emailUsuario    | anar.7@gmail.com |
      | descripcionTipoVia | Kilómetro |
      | aplicativo      | envios |
    When el cliente envía la solicitud de recogida
    Then la solicitud de recogida no debe ser creada
    And la respuesta debe contener un mensaje de error para la dirección vacía


  Scenario: Solicitud de recogida con fecha en formato incorrecto
    Given el cliente proporciona la siguiente información:
      | tipoEnvio       | 1      |
      | tipoProducto    | 4      |
      | indicativo      | 57     |
      | tipoDocumento   | 13     |
      | email           | ana@gmail.com |
      | personaEntrega  | 1      |
      | indicativoEntrega | 57   |
      | medidasAproximadas | [{"id": 2, "tipoPaq": "Par de zapatos", "nombrePaq": "Par de zapatos", "cantidad": 1}] |
      | ciudad          | Envigado (Ant) |
      | via             |         |
      | numero          |         |
      | detalle         | PARQUE SAN JOSE BOD 14 |
      | tipoVia         | 16     |
      | nombres         | prueba |
      | apellidos       | prueba1 |
      | documento       | 1036149000 |
      | celular         | 3005777777 |
      | ciudadDetalle   | {"nombre_terminal_operativa": "Medellin", "tipo_servicio": "A", "dane_ciudad": "05266", "dane_actual": "05266000", "ciudad_tarifa": "05266000", "sms": true, "cubre_mqp": true, "codigo_postal": "055428", "terminal_operativa": 2, "cubre_me": true, "area_telefono": 4, "observaciones2": "FCE - RD - FD - RCE", "codigo": "05266000", "tipo_poblacion": "D", "activo": true, "codigo_terminal": 2, "codigo_interno": 204, "mensajeria": true, "cubre_mm": false, "departamento": "05", "cubre_cm": false, "nombre": "Envigado (Ant)", "abreviado": "ENVIGADO", "nombre_terminal": "Medellin", "observaciones": ""} |
      | direccion       | Cl 10 # 20 30 |
      | fechaRecogida   | 04-12-2023 |
      | nombreEntrega   | prueba |
      | apellidosEntrega | prueba1 |
      | celularEntrega  | 3045677777 |
      | emailUsuario    | anar.7@gmail.com |
      | descripcionTipoVia | Kilómetro |
      | aplicativo      | envios |
    When el cliente envía la solicitud de recogida
    Then la solicitud de recogida no debe ser creada
    And la respuesta debe contener un mensaje de error para el formato de la fecha



  Scenario: Solicitud de recogida con fecha futura fuera del rango permitido
    Given el cliente proporciona la siguiente información:
      | tipoEnvio       | 1      |
      | tipoProducto    | 4      |
      | indicativo      | 57     |
      | tipoDocumento   | 13     |
      | email           | ana@gmail.com |
      | personaEntrega  | 1      |
      | indicativoEntrega | 57   |
      | medidasAproximadas | [{"id": 2, "tipoPaq": "Par de zapatos", "nombrePaq": "Par de zapatos", "cantidad": 1}] |
      | ciudad          | Envigado (Ant) |
      | via             |         |
      | numero          |         |
      | detalle         | PARQUE SAN JOSE BOD 14 |
      | tipoVia         | 16     |
      | nombres         | prueba |
      | apellidos       | prueba1 |
      | documento       | 1036149000 |
      | celular         | 3005777777 |
      | ciudadDetalle   | {"nombre_terminal_operativa": "Medellin", "tipo_servicio": "A", "dane_ciudad": "05266", "dane_actual": "05266000", "ciudad_tarifa": "05266000", "sms": true, "cubre_mqp": true, "codigo_postal": "055428", "terminal_operativa": 2, "cubre_me": true, "area_telefono": 4, "observaciones2": "FCE - RD - FD - RCE", "codigo": "05266000", "tipo_poblacion": "D", "activo": true, "codigo_terminal": 2, "codigo_interno": 204, "mensajeria": true, "cubre_mm": false, "departamento": "05", "cubre_cm": false, "nombre": "Envigado (Ant)", "abreviado": "ENVIGADO", "nombre_terminal": "Medellin", "observaciones": ""} |
      | direccion       | Cl 10 # 20 30 |
      | fechaRecogida   | 2024-01-10 |
      | nombreEntrega   | prueba |
      | apellidosEntrega | prueba1 |
      | celularEntrega  | 3045677777 |
      | emailUsuario    | anar.7@gmail.com |
      | descripcionTipoVia | Kilómetro |
      | aplicativo      | envios |
    When el cliente envía la solicitud de recogida
    Then la solicitud de recogida no debe ser creada
    And la respuesta debe contener un mensaje de error para la fecha fuera del rango permitido



