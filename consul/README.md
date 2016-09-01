# Python Consul Template image

This image inherits from the `1science/python` image, adding support to manage configuration through [Consul](https://consul.io/)

It includes : 
  - [S6 Overlay](https://github.com/just-containers/s6-overlay) to properly manage multiple services in one container
  - [Consul template](https://github.com/hashicorp/consul-template) to manage dynamic configuration based on Consul