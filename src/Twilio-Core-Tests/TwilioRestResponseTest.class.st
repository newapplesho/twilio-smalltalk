"
A TwilioRestResponseTest is a test class for testing the behavior of TwilioRestResponse
"
Class {
	#name : #TwilioRestResponseTest,
	#superclass : #TestCase,
	#category : #'Twilio-Core-Tests-Utilities'
}

{ #category : #'private - sample data' }
TwilioRestResponseTest >> accountSID [

	^ 'ACdda1b2cf52b955df89cc3c4aa16d66f2'
]

{ #category : #'private - sample data' }
TwilioRestResponseTest >> responseHeaders [

	^ ZnHeaders
		  withAll: (ZnMultiValueDictionary new
				   at: 'Date' add: 'Tue, 18 Jun 2024 06:22:58 GMT';
				   at: 'Content-Type' add: 'application/json;charset=utf-8';
				   at: 'Content-Length' add: '833';
				   at: 'Connection' add: 'keep-alive';
				   at: 'Twilio-Concurrent-Requests' add: '1';
				   at: 'Twilio-Request-Id'
				   add: 'RQbb2dcebb28da714fa11b1b0b20002f0a';
				   at: 'Twilio-Request-Id' add: '0.136';
				   at: 'X-Api-Domain' add: 'api.twilio.com';
				   at: 'Strict-Transport-Security' add: 'max-age=31536000';
				   at: 'Access-Control-Allow-Origin' add: '*';
				   at: 'Access-Control-Allow-Headers'
				   add:
					   'Accept, Authorization, Content-Type, If-Match, If-Modified-Since, If-None-Match, If-Unmodified-Since, Idempotency-Key, X-Pre-Auth-Context, X-Target-Region';
				   at: 'Access-Control-Allow-Methods'
				   add: 'GET, POST, PATCH, PUT, DELETE, OPTIONS';
				   at: 'Access-Control-Expose-Headers'
				   add: 'ETag, Twilio-Request-Id';
				   at: 'Access-Control-Allow-Credentials' add: 'true';
				   at: 'X-Shenanigans' add: 'none';
				   at: 'X-Powered-By' add: 'AT-500';
				   at: 'X-Home-Region' add: 'us1';
				   yourself)
]

{ #category : #'private - sample data' }
TwilioRestResponseTest >> responseJSON [

	^ '{"account_sid": "ACdda1b2cf52b955df89cc3c4aa16d66f2", "api_version": "2010-04-01", "body": "Sent from your Twilio trial account - Message from Pharo Smalltalk.", "date_created": "Tue, 18 Jun 2024 06:22:58 +0000", "date_sent": null, "date_updated": "Tue, 18 Jun 2024 06:22:58 +0000", "direction": "outbound-api", "error_code": null, "error_message": null, "from": "+12345678910", "messaging_service_sid": null, "num_media": "0", "num_segments": "1", "price": null, "price_unit": "USD", "sid": "SMbb2dcebb28da714fa11b1b0b20002f0a", "status": "queued", "subresource_uris": {"media": "/2010-04-01/Accounts/ACdda1b2cf52b955df89cc3c4aa16d66f2/Messages/SMbb2dcebb28da714fa11b1b0b20002f0a/Media.json"}, "to": "+01987654321", "uri": "/2010-04-01/Accounts/ACdda1b2cf52b955df89cc3c4aa16d66f2/Messages/SMbb2dcebb28da714fa11b1b0b20002f0a.json"}'
]

{ #category : #'private - sample data' }
TwilioRestResponseTest >> sourcePhoneNumber [
	^ '+12345678910'
]

{ #category : #'private - sample data' }
TwilioRestResponseTest >> statusLine [

	^ ZnStatusLine new
			version: 'HTTP/1.1';
			code: 201;
			reason: 'Created';
			yourself
]

{ #category : #'private - sample data' }
TwilioRestResponseTest >> stringEntity [

	^ (ZnStringEntity json: self responseJSON)
		  contentLength: self responseJSON size;
		  yourself
]

{ #category : #'private - sample data' }
TwilioRestResponseTest >> targetPhoneNumber [
	^ '+01987654321'
]

{ #category : #tests }
TwilioRestResponseTest >> testValue [

	| object response |

	response := TwilioRestResponse new
						response: self twilioResponse;
						yourself.
	object := response value.
	self
		assert: (object at: #from) equals: self sourcePhoneNumber;
		assert: (object at: #to) equals: self targetPhoneNumber;
		assert: (object at: #account_sid) equals: self accountSID
]

{ #category : #'private - sample data' }
TwilioRestResponseTest >> twilioResponse [

	^ ZnResponse new
			headers: self responseHeaders;
			entity: self stringEntity;
			statusLine: self statusLine;
			yourself
]
