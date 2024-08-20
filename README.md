1. Download Docker Desktop
   ```sh
   https://www.docker.com/products/docker-desktop/
    ```
2. Download nvm

    ```sh
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
    nvm install 10.15.2
    node -v
    ```

3. Clone project

    ```sh
    git clone git@github.com:dinhphuquy2k1/e-commerce.git
    ```

4. Backend

   build app

    ``` sh
    docker-compose up -d
    ```

   build database

   ``` sh
   docker exec e-db sh /docker-entrypoint-initdb.d/run-sql.sh
    ```

5. Open web page locally

   FE: http://localhost:30000/

   BE: http://localhost:30001/

   PHPMYADMIN: http://localhost:30002/

