
## projet broker

L'objectif de ce projet est de déployer un broker de messages (rabbitMQ) sous forme d'image Docker avec une configuration type.

Les configurations sont associées aux profils d'environnement (dev, prod)

### Pré-requis

Installation / exécution de [Docker] (https://www.docker.com/)

### Image & container Docker

https://hub.docker.com/_/rabbitmq

Dans répertoire '*scripts*' :

* **script '*./init.sh*'** -> build & run image, check si serveur rabbitMQ a été correctement démarré et clean ressources

* script "*./build.sh*" -> build image
Cf. pour plus de détails fichiers "*Dockerfile*", "*definitions.json*" & "*rabbitmq.config*"

* script "*./run.sh*" -> instantiation image (container)

### Monitoring broker

monitoring console : http://localhost:16000

username/password -> définis dans fichier configuration dans le fichier "*definitions.json*" actif

**IMPORTANT : exécution script "*scripts/hash_pwd*" pour définir password user** (mode prod)

### vhost, exchange, queue

Ces informations sont automatiquement implémentées lors du démarrage du broker.

https://www.rabbitmq.com/tutorials/amqp-concepts.html

* Delivery mode messages vers queue -> Direct exchange routing

* exemple vhost créé -> 'keywords'

user -> set permissions pour vhost (keywords)

* queue

=> qchunks (queue pour pusher des messages)

exemple arguments pour queue :
- 'x-message-ttl': *3.600.000* (milli-secondes -> 1 heure)
- 'x-delivery-limit' : *3*
- 'x-queue-type' : '*quorum*'

### push image

Pré-requis : credentials GitHub

Créer au préalable un personal token sur GitHub (read/writing/delete packages et repo)

* script "*./push.sh <GITHUB_USERNAME> <GITHUB_TOKEN>*"

Image pushée sur GitHub Container Registry (disponible sur onglet "Packages")

### Auteur

Ce projet a été créé par Fabrice MAUPIN.

### License

GNU General Public License v3.0

See [LICENSE](https://github.com/fmaupin/keywords_broker/blob/master/LICENSE) to see the full text.
