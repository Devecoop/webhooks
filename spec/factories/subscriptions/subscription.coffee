Factory      = require 'factory-lady'
Subscription = require '../../../app/models/subscriptions/subscription'

Factory.define 'subscription', Subscription,
  client_id:    Factory.assoc 'application', 'id'
  resource:     'status'
  event:        'update'
  callback_uri: 'http://callback.com/lelylan'