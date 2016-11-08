Shopify Notifications
===

[![Code Climate](https://codeclimate.com/github/thisislawatts/shopify-local-notifications/badges/gpa.svg)](https://codeclimate.com/github/thisislawatts/shopify-local-notifications)
[![Dependency Status](https://gemnasium.com/badges/github.com/thisislawatts/shopify-local-notifications.svg)](https://gemnasium.com/github.com/thisislawatts/shopify-local-notifications)


A tool to help test email templates locally when customising notifications.

Check the [templates variables documentation](https://help.shopify.com/manual/sell-online/notifications/email-variables) for a full list of the available objects.

Usage
---

```bash
ruby email-preview.rb
```

Then [open it up in the Browser](http://localhost:4567/) at [http://localhost:4567/]()

Getting Order Information
--- 

If you've got a particular order you'd like to work with, you can get easily get this information from a Shopify store in JSON format.

1. Visit the Order section and load up the order you want
2. In the browser's address bar append `.json` to the URL. 
3. Copy and paste the content to `data/{template_name}.json`


Development
---

```bash
rerun 'ruby email-preview.rb'
```
