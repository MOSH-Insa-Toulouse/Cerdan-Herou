# Cerdan-Herou
Watchdog de température

Ce projet est un système de sécurité. Il permet, connecté à une résistance chauffante de s'éteindre si la température dépasse une valeur fixée par la shield. 

Le code source utilise la rom de l'arduino pour mémoriser les valeurs fixée, un ecran lcd pour afficher les différentes variables, un relais, un thermocouples, un buzzer et une led et un switch encoder. 

Un mode mesure et un mode reset valider en appuyant sur l'encodeur.  

Logigramme: 

mesure de température 
si température > temp set: 
switch du relais
alarme se déclanche 

Demande de reset
reset 

Verifie l'état de l'encodeur
si encodeur change:
fixe une nouvelle valeur de temp set




