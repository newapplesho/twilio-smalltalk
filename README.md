# Pharo-Twilio 
A [Pharo](http://pharo.org/) library for communicating with the Twilio REST API ([http://twilio.com](http://twilio.com)). You can get started in minutes using Metacello.

# Supported Versions
[![Build](https://github.com/astares/Pharo-Twilio/actions/workflows/build.yml/badge.svg)](https://github.com/astares/Pharo-Twilio/actions/workflows/build.yml)
[![Coverage Status](https://codecov.io/github/astares/Pharo-Twilio/coverage.svg?branch=main)](https://codecov.io/gh/astares/Pharo-Twilio/branch/main)

[![Pharo 7](https://img.shields.io/badge/Pharo-7.0-%23aac9ff.svg)](https://pharo.org/download)
[![Pharo 8](https://img.shields.io/badge/Pharo-8.0-%23aac9ff.svg)](https://pharo.org/download)
[![Pharo 9](https://img.shields.io/badge/Pharo-9.0-%23aac9ff.svg)](https://pharo.org/download)
[![Pharo 10](https://img.shields.io/badge/Pharo-10-%23aac9ff.svg)](https://pharo.org/download)
[![Pharo 11](https://img.shields.io/badge/Pharo-11-%23aac9ff.svg)](https://pharo.org/download)
[![Pharo 12](https://img.shields.io/badge/Pharo-11-%23aac9ff.svg)](https://pharo.org/download)

# Installation


```smalltalk
Metacello new
    baseline: 'Twilio';
    repository: 'github://astares/Pharo-Twilio:main/src';
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

