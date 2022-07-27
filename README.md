# aras-innovator-docker
Creates an Aras Innovator 12 SP9 Docker image ready to use for testing and development purposes.

Before building the image with the command below make sure you add a valid license to be able to actually use the Aras Innovator installation.

<ol>
  <li>Open the docker-compose.yml and replace the dummy mac_address with the one that matches your Aras license key</li>
  <li>Open the InnovatorServerConfig.xml file in the Server/Setup folder and replace the dummy License tag with your License you received from Aras</li>
</ol>

```
docker-compose up -d
```

You can find more information on how to run Aras Innovator in Docker on my blog: [sebastianbeilmann.com/blog/aras-innovator-in-docker](https://www.sebastianbeilmann.com/blog/aras-innovator-in-docker/)
