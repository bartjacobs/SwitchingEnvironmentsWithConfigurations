### Switching Environments With Configurations

#### Author: Bart Jacobs

Most mobile applications connect to one or more services in the cloud. The services you connect to can differ depending on the development phase the project is in. For example, you may be using a staging environment during development, a testing environment during beta testing, and a production environment for the App Store. Switching between environments can be cumbersome and prone to errors.

Over the years, I have experimented with several strategies. The simplest and quickest solution is using a macro to set the environment and choose a configuration or environment based on the value of the macro. Some developers use targets for creating builds for a particular configuration, but I don't like this approach since targets are the wrong solution to the problem.

The best solution I have come across are **configurations**, also known as **build configurations**. Configurations are defined at the project level, which means that you can use them for every target of your project and leverage schemes to define the configuration for a particular build.

In this tutorial, I show you how to set up a project that defines several configurations. In combination with schemes, configurations enable you to easily switch between environments.

**Read this article on the [blog](https://cocoacasts.com/switching-environments-with-configurations/)**.
