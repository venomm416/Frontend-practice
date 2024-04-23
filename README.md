# Frontend

# Pre-required (Choose 1)  
1. WSL2
2. node
3. Docker (For build and run test)

# Run the project  
1. Copy ENV from Discord
2. Navigate to app folder  
   ```bash
   cd app
   ```
4. Run server with command  
   ```bash
   npm run dev
   ```


# Run docker test (This step required the docker)  
Before start if you wanted to use command in Makefile to run shorter you need install make in your host machine.  
1. Open WSL or Ubuntu or any linux of your choice or MacOS
2. If you choose to use Makefile to test run the below command (If not skip to step 4)
   ```make
   make build-test && make run-test
   ```
4. Open browser to this url
   ```localhost:9898```
5. If you choose to run with docker command run the below command  
   ```bash
   docker build -t test-coin-app .
   ```  
   ```bash
   docker run --name test-coin-app-con  -p 9898:3000 -d test-coin-app
   ```  
   Then go to step 3
