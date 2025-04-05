# twilio-smalltalk

[![ci](https://github.com/newapplesho/twilio-smalltalk/actions/workflows/ci.yml/badge.svg)](https://github.com/newapplesho/twilio-smalltalk/actions/workflows/ci.yml)

A Smalltalk library for communicating with the Twilio REST API ([http://twilio.com](http://twilio.com)).

# Supported Smalltalk Versions

| Name                                 | Smalltalk Version  | Version                                                                       |
| ------------------------------------ | ------------------ | ----------------------------------------------------------------------------- |
| [Pharo Smalltalk](http://pharo.org/) | 11.0, 12.0         | Latest Version                                                                |
| [Pharo Smalltalk](http://pharo.org/) | 4.0, 5.0, 6.0, 6.1 | [v0.2.2](https://github.com/newapplesho/twilio-smalltalk/releases/tag/v0.2.2) |

# Installation

You can load # twilio-smalltalk using Metacello

```smalltalk
Metacello new
    baseline: 'Twilio';
    repository: 'github://newapplesho/twilio-smalltalk:v0.3.2/src';
    baseline: 'Twilio';
    load.
```

# How to use

You can read official documentation [here](https://www.twilio.com/docs/api).

## Setup

```smalltalk
TwilioSettings default accountSid: 'ACxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'.
TwilioSettings default authToken: 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'.
```

## Making a Phone Call

```smalltalk
client := TwilioRestClient new.
client makeCallTo: '+14155551212' from: '+14158675309' url: 'http://demo.twilio.com/docs/voice.xml'.
```

## Sending an SMS Message

```smalltalk
client := TwilioRestClient new.
client sendTo: '+15558675309' from: '+14158141829' message: 'Sent from Pharo Smalltalk.'.
client sendTo: '+15558675309' from: '+14158141829' message: 'Pharo SmalltalkからSMSを送信'.
```

## Sending an MMS Message

```smalltalk
client := TwilioRestClient new.
client sendTo: '+15558675309' from: '+14158141829' message: 'Sent from Pharo Smalltalk.' mediaUrl: 'http://www.example.com/hearts.png'.
```

## Retrieve All Usage Records

```smalltalk
client := TwilioRestClient new.
client accounts usageRecords list.
```

## Retrieve Usage Records

```smalltalk
client := TwilioRestClient new.

"Return a single UsageRecord per usage category, for yesterday's usage only."
client accounts usageRecords yesterday list.

"Return a single UsageRecord per usage category, for this month's usage only."
client accounts usageRecords thisMonth list.
```

## Accounts

```smalltalk
client := TwilioRestClient new.
"Returns a representation of an account."
client getAccount: 'ACxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'.
```

## Handling Exceptions

```smalltalk
client := TwilioRestClient new.
[ client sendTo: '+1' from: '+ 14158141829' message: 'Handling Exceptions test'.] on: TwilioRestException do:[:ex | ex inspect ].
```
