# Tr8n Client SDK Sample Application

This is a sample application that uses tr8n_core and tr8n_rails_clientsdk. It shows some of the Tr8n's capabilities.

To run the sample application, follow these steps:

```sh
  $ git clone https://github.com/tr8n/tr8n_rails_clientsdk_sample.git
  $ cd tr8n_rails_clientsdk_sample
  $ bundle install
  $ rake db:migrate
```

Make sure you edit the config/tr8n/config.yml file and provide the correct application key and secret for your application.

Tr8n service is running at http://tr8nhub.com

Now you can startup the sample.

```sh
  $ rails s
```

Open your browser and point to:

  http://localhost:3000
