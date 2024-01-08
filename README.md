1. Download Docker Desktop

    https://www.docker.com/products/docker-desktop/
    
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

4. backendを起動
 
    intel mac

    ``` sh
    docker-compose up
    ```

    apple silicon mac
    ```sh
    docker-compose -f docker-compose-arm.yml up
    ```

5. Open web page locally

    http://localhost:8080/
    
    http://localhost:30001/

## mysql接続情報
