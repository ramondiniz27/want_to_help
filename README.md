![ruby](https://img.shields.io/badge/Ruby-2.3.4-red.svg)
![rails](https://img.shields.io/badge/Rails-5.0.1-red.svg)

## What is 'Want_To_Help'?

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tempus vitae velit vitae egestas. Fusce dictum dignissim nulla, a congue purus tincidunt euismod. Sed gravida eu mi vel euismod. Quisque vitae laoreet magna. Praesent hendrerit consectetur sem, vel accumsan nisl iaculis ut. Nulla mollis tellus arcu, vel pellentesque orci pharetra sed.

## I want to contribute

Everyone is welcome to contribute to the project.

To contribute follow the steps below:

### 1. Fork this repository
### 2. Clone your fork to a local repository
```
git clone your-foked-repository
cd your-foked-repository
```
### 3. Preparing Ambient
- Rename the file of ambient variables from .env.example to .env.

### 4. Run docker-composer build
```
docker-compose up --build
```
### 5. Run migrations (Os containers terão que estar up para executar o comando abaixo)
```
docker-compose run --rm app bundle exec rake db:create db:migrate
```
### 6. Run tests
```
docker-compose exec app bundle exec rspec
```
### 7. Start the app
```
docker-compose up --build
```
### 8. Add the original repository as a source in your local repository
```
git remote add upstream https://github.com/nonatojunior/want_to_help
```
### 9. Sync your repository with the original
```
git fetch upstream
```
### 10. Update local repository
```
git checkout master
git merge upstream/master
```
### 11. Create a new branch
```
git checkout -b my-new-feature
```
### 12. Make a pull request
