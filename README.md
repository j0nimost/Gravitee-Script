This Script will start Gravitee. 
## Gravitee Script
[Gravitee](https://www.gravitee.io/products/api-management) is a popular Open source API Management tool. Which consists of;

- API Manager
- Gateway
- Portal

### Why this script?
As the complexity of your services increases you may find yourself periodically restarting your services to ensure optimal perfomance.

Since restarting gravitee can be slow at times this scripts will handle that for you.

#### NOTE: THIS IS FOR THE LINUX ENVIRONMENT

### Implementation

- Copy the bash file to the Gravitee folder that contains the following folders.

- /gateway
- /management

On FIRST install run the below command;
#### NOTE:  Make sure the file is COPIED to the Gravitee folder as shown above

- RUN `sudo chmod +x gravitee.sh`

To start Gravitee run the following command

- `./gravitee.sh -s` 

To stop Gravitee run the following command

- `./gravitee.sh -k`