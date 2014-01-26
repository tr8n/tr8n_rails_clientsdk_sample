<p align="center">
  <img src="https://raw.github.com/tr8n/tr8n/master/doc/screenshots/tr8nlogo.png">
</p>


Tr8n Client SDK Sample Application
==================================

This is a sample application that uses tr8n_core and tr8n_rails_clientsdk. It shows some of the Tr8n's capabilities.


Running this sample
==================================

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
  $ rails s
```

Open your browser and point to:

  http://localhost:3000
