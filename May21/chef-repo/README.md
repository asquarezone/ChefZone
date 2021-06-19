# The chef-repo

All installations require a central workspace known as the chef-repo. This is a place where primitive objects--cookbooks, roles, environments, data bags, and chef-repo configuration files--are stored and managed.

The chef-repo should be kept under version control, such as [git](https://git-scm.com/), and then managed as if it were source code.

## Knife Configuration

Knife is the [command line interface](https://docs.chef.io/workstation/knife/) for Chef. The chef-repo contains a .chef directory (which is a hidden directory by default) in which the knife configuration file (config.rb) is located. This file contains configuration settings for the chef-repo.

The starter kit automatically creates the `config.rb` file. This file can be customized to support configuration settings used by [cloud provider options](https://docs.chef.io/plugin_knife/) and custom [knife plugins](https://docs.chef.io/plugin_knife_custom/).

Also located inside the .chef directory are .pem files, which contain private keys used to authenticate requests made to the Chef Infra Server. The USERNAME.pem file contains a private key unique to the user (and should never be shared with anyone). The ORGANIZATION-validator.pem file contains a private key that is global to the entire organization (and is used by all nodes and workstations that send requests to the Chef Infra Server).

For more information about the `config.rb` options, see the [knife](https://docs.chef.io/workstation/config_rb/) documentation.

## Cookbooks

A cookbook is the fundamental unit of configuration and policy distribution. A sample cookbook can be found in `cookbooks/starter`. After making changes to any cookbook, you must upload it to the Chef Infra Server using knife:

    $ knife upload cookbooks/starter

For more information about cookbooks, see the example files in the `starter` cookbook.

## Roles

Roles provide logical grouping of cookbooks and other roles. A sample role can be found at `roles/starter.rb`.

## Getting Started

Now that you have the chef-repo ready to go, check out [Learn Chef](https://learn.chef.io/) to proceed with your workstation setup. If you have any questions about Chef you can always ask [our support team](https://www.chef.io/support/) for a helping hand.
