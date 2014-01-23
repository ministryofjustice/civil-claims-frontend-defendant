# Civil Claims Frontend Defendant

This application provides the user interface for the defendant to manage his/her civil claims.

Local installation
------------------

### Clone repo and install gems

    git clone https://github.com/ministryofjustice/civil-claims-frontend-defendant.git

    cd civil-claims-frontend-defendant
    bundle install

### Run tests

To create test user:

    cd ../devise_authentication_api
    bundle exec rackup -p 9393

    cd ../civil-claims-backend-data-api
    bundle exec rails s -p 3111

    rake seed_tenant # creates test user in db

Run specs

    rspec spec

