<p align="center">
  <img src="https://raw.github.com/tr8n/tr8n/master/doc/screenshots/tr8nlogo.png">
</p>

Tr8n Client SDK Sample Application
==================================

This sample application uses tr8n_core and tr8n_rails_clientsdk gems to show some of the Tr8n's capabilities.

[![Build Status](https://travis-ci.org/tr8n/tr8n_rails_clientsdk_sample.png?branch=master)](https://travis-ci.org/tr8n/tr8n_rails_clientsdk_sample)
[![Dependency Status](https://www.versioneye.com/user/projects/52e4c5edec13750d0c000015/badge.png)](https://www.versioneye.com/user/projects/52e4c5edec13750d0c000015)


Running this sample
==================================

To run this sample application, follow these steps:

```sh
  $ git clone https://github.com/tr8n/tr8n_rails_clientsdk_sample.git
  $ cd tr8n_rails_clientsdk_sample
  $ bundle install
  $ rake db:migrate
```

Make sure you edit the config/tr8n/config.yml file and provide the correct application key and secret for your application.

Tr8n service is running at https://tr8nhub.com

Now you can start the sample.

```sh
  $ rails s
```

Open your browser and point to:

  http://localhost:3000
