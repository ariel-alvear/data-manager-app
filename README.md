README

# Descripción General 
(Para montar la app en local las instrucciones están luego de esta descripción)

Existe un grupo de personas que día a día va creciendo más y más. Personas que a través de los videojuegos han logrado crear distintas comunidades a partir de competencias multijugador. Esta app busca pemirtir gestionar ligas y competencias de forma más fácil y rápida, generando una mayor y mejor interacción entre organizadores y jugadores.
Hitos a cumplir
Versión 0.1

Usuarios podrán:

    # Gestionar Sistemas de Puntajes:
    - Se debe crear al menos un sistema de puntaje, que a su vez debe tener varias posiciones y puntos. (Esto nos permitirá facilitar cálculos y estadísticas en las ligas y eventos).

    # Gestionar Ligas y sus Carreras:
    - Ya se pueden crear Pistas de carreras, Temporadas de liga y Eventos de liga. Una temporada de liga debe tener un Sistema de puntuación asociado. Un Evento de liga debe estar asociado a una Temporada de liga y a una Pista de carrera.

    # Gestionar Carreras y participantes
    - Ya se pueden crear carreras incluyendo a los participantes de estas. Para esto, al momento de crear una carrera se pueden agregar los participantes con su respectiva posición. Luego de crear la carrera se redirigirá a una tabla de resultados con los participantes y sus puntajes y posiciones.
    
    # Gestionar puntos extras y sanciones
    - En la app se pueden otorgar puntos de bonificación (puntos que se suman) a un participante, o crear puntos de penalización (puntos que se restan a un participante) según el criterio de los administradores.

    ## Pendiente
    - Se deben crear usuarios para inscribir en temporadas de liga.

Versión 0.2

    Se creará estructura de permisos, comenzando por diferenciar Administrador, Participante y Externo. (Por detallar)

    en este punto agregaremos Devise y CanCan

    Versiones 0.1 y 0.2 serán de exclusivo permiso de Administrador. (Por detallar)
    Versiones 0.1 y 0.2 solo otorgará permiso de vista a los Participantes y Externos. (Por detallar)

Versión 0.3

Participantes podrán:

    Personalizar y gestionar su perfil (Por detallar)

Versión 0.4

Participantes podrán:

    Denunciar a otros participantes (sería lo mismo que solicitar sanción para otro jugador) (Por detallar)
    Recibir respuesta de su Denuncias (Por detallar)
    Recibir notificación en caso de aplicarse una Sanción (Por detallar)

Administradores podrán:

    Recibir solicitudes de sanciones y gestionarlas (Por detallar)
    Responder las solicitudes de sanciones.

Versión 0.5

Se incluirá servicio de mails a la aplicación para notificar a los distintos tipos de usuarios.
Versión 0.6

Externos podrán:

    Votar por el Jugador de la jornada (Por detallar)

# Setup
Para montar la app se debe:
1) Clonar repositorio
2) Crear la base de datos y correr migraciones de modelos `rails db:create db:migrate`
3) Crear datos para probar la aplicación `rails seed:run_all_seeds`, correr este comando hasta que ya no se creen nuevos datos.
4) Levantar el servidor `rails s`
5) Ingresar con cualquier usuario del archivo `lib/tasks/seeds/04_seed_users.rake`
6) El ambiente actual de prueba es https://f1-chile-data-manager-staging.herokuapp.com/
