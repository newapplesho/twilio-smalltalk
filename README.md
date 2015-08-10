# twilio-smalltalk
A Smalltalk library for communicating with the Twilio REST API. You can get started in minutes using Metacello and FileTree.

## Overview
Library that enables simple integration with both Twilio voice and SMS services ([http://twilio.com](http://twilio.com)). 

#Supported Smalltalk Versions
- [Pharo Smalltalk](http://pharo.org/) 4.0


# Installation

```smalltalk
Gofer new
url:'http://smalltalkhub.com/mc/newapplesho/twilio-smalltalk/main';
    package: 'ConfigurationOfTwilio';
    load.
(Smalltalk at: #ConfigurationOfTwilio) load.
```

or you may use git.

step 1

```
https://github.com/newapplesho/twilio-smalltalk.git
```

step 2

```smalltalk
| pathToPackageDirectory |
"edit to match the path to your chosen package directory"
pathToPackageDirectory := '/YOUR-GIT-DIRECTORY-PATH/sendgrid-smalltalk/pharo-repository/'.
Metacello new
baseline: 'Twilio';
repository: 'filetree://', pathToPackageDirectory;
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

## Sending a SMS Message

```smalltalk
client := TwilioRestClient new.
client sendTo: '+15558675309' from: '+14158141829' message: 'Sent from Pharo Smalltalk.'.
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

