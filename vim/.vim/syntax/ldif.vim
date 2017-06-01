" Vim syntax file
" Language    ldif	
" Maintainer	Rostislav Matl <matl@bithill.net>
" Last Change	

" remove old syntax
syn clear

"ignore case when matching
syn case ignore

syn match ldifKeyword "^changetype:"
syn match ldifKeyword "^add:"
syn match ldifKeyword "^delete:"
syn match ldifKeyword "^replace:"
syn match ldifKeyword "^newrdn:"
syn match ldifKeyword "^deleteoldrdn:"

" <core.schema> """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syn match ldifAttributeType "^createTimestamp:"
syn match ldifAttributeType "^modifyTimestamp:"
syn match ldifAttributeType "^creatorsName:"
syn match ldifAttributeType "^modifiersName:"
syn match ldifAttributeType "^subschemaSubentry:"
syn match ldifAttributeType "^dITStructureRules:"
syn match ldifAttributeType "^dITContentRules:"
syn match ldifAttributeType "^matchingRules:"
syn match ldifAttributeType "^attributeTypes:"
syn match ldifAttributeType "^objectClasses:"
syn match ldifAttributeType "^nameForms:"
syn match ldifAttributeType "^matchingRuleUse:"
syn match ldifAttributeType "^structuralObjectClass:"
syn match ldifAttributeType "^namingContexts:"
syn match ldifAttributeType "^altServer:"
syn match ldifAttributeType "^supportedExtension:"
syn match ldifAttributeType "^supportedControl:"
syn match ldifAttributeType "^supportedSASLMechanisms:"
syn match ldifAttributeType "^supportedLDAPVersion:"
syn match ldifAttributeType "^ldapSyntaxes:"
syn match ldifAttributeType "^name:"
syn match ldifAttributeType "^dn:"
syn match ldifAttributeType "^distinguishedName:"
syn match ldifAttributeType "^objectClass:"
syn match ldifAttributeType "^aliasedObjectName:"
syn match ldifAttributeType "^knowledgeInformation:"
syn match ldifAttributeType "^cn:"
syn match ldifAttributeType "^commonName:"
syn match ldifAttributeType "^sn:"
syn match ldifAttributeType "^surname:"
syn match ldifAttributeType "^serialNumber:"
syn match ldifAttributeType "^c:"
syn match ldifAttributeType "^countryName:"
syn match ldifAttributeType "^l:"
syn match ldifAttributeType "^localityName:"
syn match ldifAttributeType "^st:"
syn match ldifAttributeType "^stateOrProvinceName:"
syn match ldifAttributeType "^street:"
syn match ldifAttributeType "^streetAddress:"
syn match ldifAttributeType "^o:"
syn match ldifAttributeType "^organizationName:"
syn match ldifAttributeType "^ou:"
syn match ldifAttributeType "^organizationalUnitName:"
syn match ldifAttributeType "^title:"
syn match ldifAttributeType "^description:"
syn match ldifAttributeType "^searchGuide:"
syn match ldifAttributeType "^businessCategory:"
syn match ldifAttributeType "^postalAddress:"
syn match ldifAttributeType "^postalCode:"
syn match ldifAttributeType "^postOfficeBox:"
syn match ldifAttributeType "^physicalDeliveryOfficeName:"
syn match ldifAttributeType "^telephoneNumber:"
syn match ldifAttributeType "^telexNumber:"
syn match ldifAttributeType "^teletexTerminalIdentifier:"
syn match ldifAttributeType "^facsimileTelephoneNumber:"
syn match ldifAttributeType "^fax:"
syn match ldifAttributeType "^x121Address:"
syn match ldifAttributeType "^internationaliSDNNumber:"
syn match ldifAttributeType "^registeredAddress:"
syn match ldifAttributeType "^destinationIndicator:"
syn match ldifAttributeType "^preferredDeliveryMethod:"
syn match ldifAttributeType "^presentationAddress:"
syn match ldifAttributeType "^supportedApplicationContext:"
syn match ldifAttributeType "^member:"
syn match ldifAttributeType "^owner:"
syn match ldifAttributeType "^roleOccupant:"
syn match ldifAttributeType "^seeAlso:"
syn match ldifAttributeType "^userPassword:"
syn match ldifAttributeType "^userCertificate:"
syn match ldifAttributeType "^cACertificate:"
syn match ldifAttributeType "^authorityRevocationList:"
syn match ldifAttributeType "^certificateRevocationList:"
syn match ldifAttributeType "^crossCertificatePair:"
syn match ldifAttributeType "^gn:"
syn match ldifAttributeType "^initials:"
syn match ldifAttributeType "^generationQualifier" 
syn match ldifAttributeType "^x500UniqueIdentifier:"
syn match ldifAttributeType "^dnQualifier:"
syn match ldifAttributeType "^enhancedSearchGuide:"
syn match ldifAttributeType "^protocolInformation:"
syn match ldifAttributeType "^uniqueMember:"
syn match ldifAttributeType "^houseIdentifier:"
syn match ldifAttributeType "^supportedAlgorithms:"
syn match ldifAttributeType "^deltaRevocationList:"
syn match ldifAttributeType "^dmdName:"
syn match ldifAttributeType "^labeledURI:"
syn match ldifAttributeType "^entryTtl:"
syn match ldifAttributeType "^dynamicSubtrees:"
syn match ldifAttributeType "^userid:"
syn match ldifAttributeType "^mail:"
syn match ldifAttributeType "^rfc822Mailbox:"
syn match ldifAttributeType "^domainComponent:"
syn match ldifAttributeType "^ref:"
syn match ldifAttributeType "^associatedDomain:"
syn match ldifAttributeType "^kerberosName:"
syn match ldifAttributeType "^entry:"
syn match ldifAttributeType "^children:"
syn match ldifAttributeType "^OpenLDAPaci:"
syn match ldifObjectClass "^subschema:"
syn match ldifObjectClass "^top:"
syn match ldifObjectClass "^alias:"
syn match ldifObjectClass "^country:"
syn match ldifObjectClass "^locality:"
syn match ldifObjectClass "^organization:"
syn match ldifObjectClass "^organizationalUnit:"
syn match ldifObjectClass "^person:"
syn match ldifObjectClass "^organizationalPerson:"
syn match ldifObjectClass "^organizationalRole:"
syn match ldifObjectClass "^groupOfNames:"
syn match ldifObjectClass "^residentialPerson:"
syn match ldifObjectClass "^applicationProcess:"
syn match ldifObjectClass "^applicationEntity:"
syn match ldifObjectClass "^dSA:"
syn match ldifObjectClass "^device:"
syn match ldifObjectClass "^strongAuthenticationUser:"
syn match ldifObjectClass "^certificationAuthority:"
syn match ldifObjectClass "^groupOfUniqueNames:"
syn match ldifObjectClass "^userSecurityInformation:"
syn match ldifObjectClass "^certificationAuthority-V2:"
syn match ldifObjectClass "^cRLDistributionPoint:"
syn match ldifObjectClass "^dmd:"
syn match ldifObjectClass "^extensibleObject:"
syn match ldifObjectClass "^labeledURIObject:"
syn match ldifObjectClass "^dynamicObject:"
syn match ldifObjectClass "^simpleSecurityObject:"
syn match ldifObjectClass "^dcObject:"
syn match ldifObjectClass "^uidObject:"
syn match ldifObjectClass "^referral:"
syn match ldifObjectClass "^LDAPsubEntry:"
syn match ldifObjectClass "^LDAProotDSE:"
" </core.schema> """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" <cosine.schema> """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syn match ldifAttributeType "^textEncodedORAddress:"
syn match ldifAttributeType "^info:"
syn match ldifAttributeType "^drink:"
syn match ldifAttributeType "^favouriteDrink:"
syn match ldifAttributeType "^roomNumber:"
syn match ldifAttributeType "^photo:"
syn match ldifAttributeType "^userClass:"
syn match ldifAttributeType "^host:"
syn match ldifAttributeType "^manager:"
syn match ldifAttributeType "^documentIdentifier:"
syn match ldifAttributeType "^documentTitle:"
syn match ldifAttributeType "^documentVersion:"
syn match ldifAttributeType "^documentAuthor:"
syn match ldifAttributeType "^documentLocation:"
syn match ldifAttributeType "^homePhone:"
syn match ldifAttributeType "^homeTelephoneNumber:"
syn match ldifAttributeType "^secretary:"
syn match ldifAttributeType "^otherMailbox:"
syn match ldifAttributeType "^lastModifiedTime:"
syn match ldifAttributeType "^lastModifiedBy:"
syn match ldifAttributeType "^aRecord:"
syn match ldifAttributeType "^mDRecord:"
syn match ldifAttributeType "^mXRecord:"
syn match ldifAttributeType "^nSRecord:"
syn match ldifAttributeType "^sOARecord:"
syn match ldifAttributeType "^cNAMERecord:"
syn match ldifAttributeType "^associatedName:"
syn match ldifAttributeType "^homePostalAddress:"
syn match ldifAttributeType "^personalTitle:"
syn match ldifAttributeType "^mobile:"
syn match ldifAttributeType "^mobileTelephoneNumber:"
syn match ldifAttributeType "^pager:"
syn match ldifAttributeType "^pagerTelephoneNumber:"
syn match ldifAttributeType "^co:"
syn match ldifAttributeType "^friendlyCountryName:"
syn match ldifAttributeType "^uniqueIdentifier:"
syn match ldifAttributeType "^organizationalStatus:"
syn match ldifAttributeType "^janetMailbox:"
syn match ldifAttributeType "^mailPreferenceOption:"
syn match ldifAttributeType "^buildingName:"
syn match ldifAttributeType "^dSAQuality:"
syn match ldifAttributeType "^singleLevelQuality:"
syn match ldifAttributeType "^subtreeMinimumQuality:"
syn match ldifAttributeType "^subtreeMaximumQuality:"
syn match ldifAttributeType "^personalSignature:"
syn match ldifAttributeType "^dITRedirect:"
syn match ldifAttributeType "^audio:"
syn match ldifAttributeType "^documentPublisher:"
syn match ldifObjectClass "^pilotObject:"
syn match ldifObjectClass "^pilotPerson:"
syn match ldifObjectClass "^newPilotPerson:"
syn match ldifObjectClass "^account:"
syn match ldifObjectClass "^document:"
syn match ldifObjectClass "^room:"
syn match ldifObjectClass "^documentSeries:"
syn match ldifObjectClass "^domain:"
syn match ldifObjectClass "^RFC822localPart:"
syn match ldifObjectClass "^dNSDomain:"
syn match ldifObjectClass "^domainRelatedObject:"
syn match ldifObjectClass "^friendlyCountry:"
syn match ldifObjectClass "^pilotOrganization:"
syn match ldifObjectClass "^pilotDSA:"
syn match ldifObjectClass "^qualityLabelledData:"
" </cosine.schema> """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

hi link ldifKeyword Statement
hi link ldifAttributeType Type
hi link ldifObjectClass Type
