# twilio-smalltalk [![Build Status](https://travis-ci.org/newapplesho/twilio-smalltalk.svg?branch=master)](https://travis-ci.org/newapplesho/twilio-smalltalk)
A Smalltalk library for communicating with the Twilio REST API ([http://twilio.com](http://twilio.com)). You can get started in minutes using Metacello.

# Supported Smalltalk Versions
- [Pharo Smalltalk](http://pharo.org/) 4.0, 5.0, 6.0, 6.1


# Installation


```smalltalk
Metacello new
    baseline: 'Twilio';
    repository: 'github://newapplesho/twilio-smalltalk:v0.2.1/pharo-repository';
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

