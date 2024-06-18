"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestTwilioCore,
	#superclass : #PackageManifest,
	#category : #'Twilio-Core-Manifest'
}

{ #category : #'code-critics' }
ManifestTwilioCore class >> ruleClassNotReferencedRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGClassDefinition #(#TwilioSMSMessage)) #'2024-06-17T23:24:57.503+02:00') #(#(#RGPackageDefinition #(#'Twilio-Core')) #'2024-06-18T00:51:18.231+02:00') )
]

{ #category : #'code-critics' }
ManifestTwilioCore class >> ruleInconsistentMethodClassificationRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGClassDefinition #(#TwilioSettings)) #'2024-06-17T23:36:00.528+02:00') )
]
