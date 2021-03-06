##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
# 
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'UserBinding' do
  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.notify.v1.services('ISXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .users('NUXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .bindings('BSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://notify.twilio.com/v1/Services/ISXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Users/NUXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Bindings/BSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "address": "address",
          "binding_type": "binding_type",
          "credential_sid": "CRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "2015-07-30T20:00:00Z",
          "date_updated": "2015-07-30T20:00:00Z",
          "endpoint": "endpoint",
          "links": {
              "user": "https://notify.twilio.com/v1/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Users/identity"
          },
          "identity": "identity",
          "notification_protocol_version": "notification_protocol_version",
          "service_sid": "ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "sid": "BSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "tags": [
              "tag"
          ],
          "url": "https://notify.twilio.com/v1/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Users/identity/Bindings/BSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.notify.v1.services('ISXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .users('NUXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .bindings('BSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()

    expect(actual).to_not eq(nil)
  end

  it "can delete" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.notify.v1.services('ISXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .users('NUXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .bindings('BSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').delete()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'delete',
        url: 'https://notify.twilio.com/v1/Services/ISXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Users/NUXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Bindings/BSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives delete responses" do
    @holodeck.mock(Twilio::Response.new(
        204,
      nil,
    ))

    actual = @client.notify.v1.services('ISXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .users('NUXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .bindings('BSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').delete()

    expect(actual).to eq(true)
  end

  it "can create" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.notify.v1.services('ISXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .users('NUXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .bindings.create(binding_type: 'apn', address: 'address')
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {'BindingType' => 'apn', 'Address' => 'address', }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://notify.twilio.com/v1/Services/ISXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Users/NUXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Bindings',
        data: values,
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "address": "address",
          "binding_type": "binding_type",
          "credential_sid": "CRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "2015-07-30T20:00:00Z",
          "date_updated": "2015-07-30T20:00:00Z",
          "endpoint": "endpoint",
          "identity": "identity",
          "links": {
              "user": "https://notify.twilio.com/v1/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Users/identity"
          },
          "notification_protocol_version": "notification_protocol_version",
          "service_sid": "ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "sid": "BSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "tags": [
              "tag"
          ],
          "url": "https://notify.twilio.com/v1/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Users/identity/Bindings/BSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.notify.v1.services('ISXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .users('NUXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .bindings.create(binding_type: 'apn', address: 'address')

    expect(actual).to_not eq(nil)
  end

  it "receives create_alexa responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "address": "address",
          "binding_type": "binding_type",
          "credential_sid": "CRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "2015-07-30T20:00:00Z",
          "date_updated": "2015-07-30T20:00:00Z",
          "endpoint": "endpoint",
          "identity": "identity",
          "links": {
              "user": "https://notify.twilio.com/v1/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Users/identity"
          },
          "notification_protocol_version": "notification_protocol_version",
          "service_sid": "ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "sid": "BSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "tags": [
              "tag"
          ],
          "url": "https://notify.twilio.com/v1/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Users/identity/Bindings/BSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.notify.v1.services('ISXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .users('NUXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .bindings.create(binding_type: 'apn', address: 'address')

    expect(actual).to_not eq(nil)
  end

  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.notify.v1.services('ISXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .users('NUXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .bindings.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://notify.twilio.com/v1/Services/ISXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Users/NUXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Bindings',
    ))).to eq(true)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "bindings": [],
          "meta": {
              "first_page_url": "https://notify.twilio.com/v1/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Users/identity/Bindings?PageSize=50&Page=0",
              "key": "bindings",
              "next_page_url": null,
              "page": 0,
              "page_size": 50,
              "previous_page_url": null,
              "url": "https://notify.twilio.com/v1/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Users/identity/Bindings?PageSize=50&Page=0"
          }
      }
      ]
    ))

    actual = @client.notify.v1.services('ISXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .users('NUXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .bindings.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_full responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "bindings": [
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "address": "address",
                  "binding_type": "binding_type",
                  "credential_sid": "CRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "date_created": "2015-07-30T20:00:00Z",
                  "date_updated": "2015-07-30T20:00:00Z",
                  "endpoint": "endpoint",
                  "identity": "identity",
                  "links": {
                      "user": "https://notify.twilio.com/v1/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Users/identity"
                  },
                  "notification_protocol_version": "notification_protocol_version",
                  "service_sid": "ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "sid": "BSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "tags": [
                      "tag"
                  ],
                  "url": "https://notify.twilio.com/v1/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Users/identity/Bindings/BSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
              }
          ],
          "meta": {
              "first_page_url": "https://notify.twilio.com/v1/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Users/identity/Bindings?PageSize=50&Page=0",
              "key": "bindings",
              "next_page_url": null,
              "page": 0,
              "page_size": 50,
              "previous_page_url": null,
              "url": "https://notify.twilio.com/v1/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Users/identity/Bindings?PageSize=50&Page=0"
          }
      }
      ]
    ))

    actual = @client.notify.v1.services('ISXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .users('NUXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .bindings.list()

    expect(actual).to_not eq(nil)
  end
end