# aras-innovator-docker
Creates an Aras Innovator 12 SP9 Docker image ready to use for testing and development purposes.

Before building the image make sure you add a valid license to be able to actually use the Aras Innovator installation by following these steps:

<ol>
  <li>Open the docker-compose.yml and replace the dummy mac_address with the one that matches your Aras license key</li>
  <li>Open the InnovatorServerConfig.xml file in the Server/Setup folder and replace the dummy License tag with your License you received from Aras</li>
</ol>

After that execute the following command to build and start your Aras Innovator Docker environment:

```
docker-compose up -d
```

You can login to the Innovator instance using the default users "admin" or "root" with the password "innovator".

You can find more information on how to run Aras Innovator in Docker on my blog: [sebastianbeilmann.com/blog/aras-innovator-in-docker](https://www.sebastianbeilmann.com/blog/aras-innovator-in-docker/)
