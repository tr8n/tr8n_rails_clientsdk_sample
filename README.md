# Tr8n Client SDK Sample Application

This is a sample application that uses tr8n_core and tr8n_rails_clientsdk. It shows some of the Tr8n's capabilities.

The Tr8n service must be available and running in order for this sample application to work.

You can use http://sandbox.tr8nhub.com or download and install the service locally by following these instructions:

```sh
  $ git clone https://github.com/tr8n/tr8n.git
  $ cd tr8n/test/dummy
  $ bundle install
  $ rake db:migrate
  $ rake tr8n:init
  $ rails s
```

Open your browser and point to:

  http://localhost:3000

This is your Tr8n Service Instance.

Register as a translator and create a sample application you will be using the next step.

Now you can install and run this sample application.

# Running this sample

To run the gem as a stand-alone application follow these steps:

```sh
  $ git clone https://github.com/tr8n/tr8n_rails_clientsdk_sample.git
  $ cd tr8n_rails_clientsdk_sample
  $ bundle install
  $ rake db:migrate
```

Make sure you edit the config/tr8n/config.yml file and provide the correct application host, key and secret for your application.

Now you can startup the sample.

```sh
  $ rails s -p 3001
```

Open your browser and point to:

  http://localhost:3001
