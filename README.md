<<<<<<< HEAD
Projet de Déploiement Flask sur Kubernetes


Description :
Ce projet déploie une application Flask sur Kubernetes en utilisant Docker pour la construction des images et Kubernetes pour l'orchestration des conteneurs.


Contenu du Projet :

    Dockerfile : Configure l'image Docker de l'application Flask.
    deployment.yaml : Configuration Kubernetes pour le déploiement.
    service.yaml : Configuration Kubernetes pour exposer l'application.
    app.py : Code source de l'application Flask.
    requirements.txt : Dépendances Python nécessaires.
    README.txt : Documentation du projet.


Prérequis :

    Docker
    Kubernetes
    kubectl
    Minikube (ou un autre environnement Kubernetes local)


Instructions :

    Construire l'image Docker : 
        docker build -t my-flask-app:latest .

    Démarrer le registre Docker local (si nécessaire) : 
        docker run -d -p 30336:5000 --name registry registry:2

    Taguer et pousser l'image Docker : 
        docker tag my-flask-app:latest localhost:30336/my-flask-app:latest
        docker push localhost:30336/my-flask-app:latest

    Déployer l'application sur Kubernetes :
        kubectl apply -f deployment.yaml
        kubectl apply -f service.yaml

    Accéder à l'application :
        Ouvrez http://localhost:30000 dans votre navigateur pour voir l'application Flask en fonctionnement.


Configuration :

    deployment.yaml : Configure le déploiement de l'application Flask avec 1 réplique.
=======
Projet de Déploiement Flask sur Kubernetes


Description :
Ce projet déploie une application Flask sur Kubernetes en utilisant Docker pour la construction des images et Kubernetes pour l'orchestration des conteneurs.


Contenu du Projet :

    Dockerfile : Configure l'image Docker de l'application Flask.
    deployment.yaml : Configuration Kubernetes pour le déploiement.
    service.yaml : Configuration Kubernetes pour exposer l'application.
    app.py : Code source de l'application Flask.
    requirements.txt : Dépendances Python nécessaires.
    README.txt : Documentation du projet.


Prérequis :

    Docker
    Kubernetes
    kubectl
    Minikube (ou un autre environnement Kubernetes local)


Instructions :

    Construire l'image Docker : 
        docker build -t my-flask-app:latest .

    Démarrer le registre Docker local (si nécessaire) : 
        docker run -d -p 30336:5000 --name registry registry:2

    Taguer et pousser l'image Docker : 
        docker tag my-flask-app:latest localhost:30336/my-flask-app:latest
        docker push localhost:30336/my-flask-app:latest

    Déployer l'application sur Kubernetes :
        kubectl apply -f deployment.yaml
        kubectl apply -f service.yaml

    Accéder à l'application :
        Ouvrez http://localhost:30000 dans votre navigateur pour voir l'application Flask en fonctionnement.


Configuration :

    deployment.yaml : Configure le déploiement de l'application Flask avec 1 réplique.
>>>>>>> d4070a21157a47d835f83c6d445a0e35a21fdf18
    service.yaml : Expose l'application Flask via un service NodePort sur le port 30000.