### Build a RESTful API that sums prime numbers up to 10 million

### Local Development setup (Using Docker)

Run `docker-compose build`

Run `docker-compose up -d`

Open the browser and visit http://localhost:3000/api/prime_numbers/calculate?max_number=100

To view API Doc visit http://localhost:8080/api-docs/index.html

### Load image into Minikube

Run `eval $(minikube -p minikube docker-env)`

Run `docker build -t your_image_name -f ./Dockerfile .`

Run `kubectl run your_container_name --image=your_image_name --image-pull-policy=Never --restart=Never`

Run `kubectl port-forward your_container_name 8080:3000`

Open the browser and visit http://localhost:8080/api/prime_numbers/calculate?max_number=100

To view API Doc visit http://localhost:8080/api-docs/index.html

### Local Development setup (Without Docker)

Make sure these versions are install

Ruby version: 3.1.4
Rails version: 7.1.3

Run `bundle install`

Run `rake db:create`

Run `rake db:migrate`

Run `rails s`

Open the browser and visit http://localhost:3000/api/prime_numbers/calculate?max_number=100

To view API Doc visit http://localhost:8080/api-docs/index.html

