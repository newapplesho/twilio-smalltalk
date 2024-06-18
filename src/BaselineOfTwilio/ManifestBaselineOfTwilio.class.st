"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : 'ManifestBaselineOfTwilio',
	#superclass : 'PackageManifest',
	#category : 'BaselineOfTwilio-Manifest',
	#package : 'BaselineOfTwilio',
	#tag : 'Manifest'
}

{ #category : 'code-critics' }
ManifestBaselineOfTwilio class >> ruleClassNotReferencedRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGClassDefinition #(#BaselineOfTwilio)) #'2024-06-18T09:16:23.872+02:00') )
]
