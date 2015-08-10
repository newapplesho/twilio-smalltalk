defaults
defaultBaseUrl
	^ 'https://', TwilioSettings default hostname ,'/', self apiVersion, '/'
