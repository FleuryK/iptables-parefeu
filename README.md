# iptables-parefeu
Adresses IP et plages d'adresses IP bloqués / IP address and IP address range bloqued<br /><br />

# Comment le faire fonctionner ? / How to operate?
<ul>
<li>Installer iptables / Install iptables :<br />
<code>apt-get install iptables</code> ou / or <code>aptitude install iptables</code></li>
<li>Mettre le fichier dans <code>/etc/init.d/</code> et renommer le fichier sans l'extension .sh / Put the file in <code>/etc/init.d/</code> and rename the file without the .sh extension</li>
<li>Donner lui les droits d'exécution sur ce fichier / Give it execute permission on that file :<br />
<code>chmod +x parefeu</code></li>
<li>Taper <code>/etc/init.d/parefeu</code> dans le terminal afin de le mettre en fonctionnement / Type <code>/etc/init.d/parefeu</code> in the terminal to put in operation
<li>Si vous souhaitez lors du redémarrage que ce fichier réapplique les règles, taper <code>update-rc.d parefeu defaults</code> dans le terminal / If you would when restarting this file applies the rules, type <code>update-rc.d parefeu defaults</code> in the terminal</li>
</ul><br /><br />

# Statistiques / Statistics
361 adresses IP bloqués / 361 IP address bloqued<br />
1139 plages d'adresses IP bloqués / 1139 IP address range bloqued<br /><br />
Total : 1500
