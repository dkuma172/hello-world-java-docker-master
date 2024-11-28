## Step 1: Install Maven
```
 sudo yum install maven
```

## Step 2: How to Run Project
```
 sudo mvn clean package
```

## Step 3: How to Build Image
```
sudo docker build -t hello-world-java-docker .
```  

## Step 4: How to Run Image
```
 sudo docker run -p 8080:8080 -it -d hello-world-java-docker
```
