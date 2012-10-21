# RailsCasts Episode #388: Multitenancy with Scopes

http://railscasts.com/episodes/388-multitenancy-with-scopes

Requires Ruby 1.9.2 or higher.


### Commands used in this episode

```
rails g model tenant name subdomain
rails g migration add_tenant_to_topics tenant_id:integer:index
rails g migration add_tenant_to_posts tenant_id:integer:index
rails g migration add_tenant_to_users tenant_id:integer:index
rake db:migrate
```


### Commands used in rails console

```
Tenant.create! name: "Cheese", subdomain: "cheese"
Tenant.create! name: "Chunky Bacon", subdomain: "chunkybacon"
Topic.count
Topic.update_all(tenant_id: 1)
Topic.unscoped.count
```
