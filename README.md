<h1 align="center">
📖 ft_onion | 42 Cibersec
</h1>

<p align="center">
	<b><i>Containers, Tor and Love</i></b><br>
</p>

<p align="center">
	<img alt="GitHub code size in bytes" src="https://img.shields.io/github/languages/code-size/Falitomal/ft_onion?color=lightblue" />
	<img alt="Code language count" src="https://img.shields.io/github/languages/count/Falitomal/ft_onion?color=yellow" />
	<img alt="GitHub top language" src="https://img.shields.io/github/languages/top/Falitomal/ft_onion?color=blue" />
	<img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/Falitomal/ft_onion?color=green" />
</p>

## ✏️ Files
```
The following files must be submitted:

index.html
nginx.conf
sshd_config
torrc
```
## 💡 About the project

```

Create a web page and make it accessible through the Tor network by creating a hidden service.

Requirements
 The service must have a static web page: a single index.html file.
 The page will be accessible through a URL of type xxxxxxxx.onion.
 The content of the page will be "up to you".
 Nginx will be used to configure the web server.
 No other server or framework is allowed.
 The web page will be accessible via HTTP on port 80.
 Access to the server will be enabled by SSH on port 4242.
 No other ports must be opened and no firewall rules must be set.

```

## 🛠️ Usage
```

It will be necessary to use Nginx and Tor in order to create the hidden service.

We create a dockerfile with the necessary services, to deploy a web in local and tor.
On that machine: 
Add a rule for port 80:80 (HTTP).
Add a rule for port 4242:4242 (SSH).
Once the necessary packages have been installed, simply replace the delivered files with the original ones so that the indicated configuration is applied and finally, restart the Nginx and Tor services.

```
##  🛠️ Useful commands
```

    docker build -t ft_onion .
    docker run -d -p 80:80 -p 4242:4242 ft_onion ft_onion
    
    This command to get the list of containers:
    docker ps -a
    This command to export the onion:
    docker exec -it "id_container" cat /var/lib/tor/hidden_service/hostname.

```
