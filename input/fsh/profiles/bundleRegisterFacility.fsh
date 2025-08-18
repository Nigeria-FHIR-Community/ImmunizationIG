// ============================================================
// Profile: Register Facility Bundle (NG-IMM)
// ============================================================
Profile: NgImmRegisterFacilityBundle
Parent: Bundle
Id: ngimm-register-facility-bundle
Title: "IMMZ.A Bundle Register Facility"
Description: """
Transaction Bundle used to register a facility and its core context:
Organization (owner), Location (service point), Practitioner (staff),
and PractitionerRole (linking staff to org/location and services).
"""

// Bundle type
* type 1..1
* type = #transaction (exactly)
* timestamp 0..1
* entry 2..* MS

// Slice entries by contained resource
* entry ^slicing.discriminator.type = #pattern
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false

* entry contains
    organization     1..1 MS and
    location         1..1 MS and
    practitioner     1..1 MS and
    practitionerrole 1..1 MS

// ---- Organization ----
* entry[organization].fullUrl 1..1 MS
* entry[organization].resource 1..1
* entry[organization].resource only NgImmOrganization
* entry[organization].request 1..1
* entry[organization].request.method = #POST (exactly)
* entry[organization].request.url = "Organization" (exactly)

// ---- Location ----
* entry[location].fullUrl 1..1 MS
* entry[location].resource 1..1
* entry[location].resource only NgImmLocation
* entry[location].request 1..1
* entry[location].request.method = #POST (exactly)
* entry[location].request.url = "Location" (exactly)

// ---- Practitioner ----
* entry[practitioner].fullUrl 1..1 MS
* entry[practitioner].resource 1..1
* entry[practitioner].resource only NgImmPractitioner
* entry[practitioner].request 1..1
* entry[practitioner].request.method = #POST (exactly)
* entry[practitioner].request.url = "Practitioner" (exactly)

// ---- PractitionerRole ----
* entry[practitionerrole].fullUrl 1..1 MS
* entry[practitionerrole].resource 1..1
* entry[practitionerrole].resource only NgImmPractitionerRole
* entry[practitionerrole].request 1..1
* entry[practitionerrole].request.method = #POST (exactly)
* entry[practitionerrole].request.url = "PractitionerRole" (exactly)

// ---- Invariants / recommendations ----
Invariant: ngimm-rf-location-org-link
Description: "Location.managingOrganization SHOULD reference the Organization in this Bundle."
Expression: "entry.resource.ofType(Location).managingOrganization.reference.exists()"
Severity: #warning

Invariant: ngimm-rf-prrole-links
Description: "PractitionerRole MUST reference Practitioner and Organization; MAY reference Location(s)."
Expression: "entry.resource.ofType(PractitionerRole).practitioner.exists() and entry.resource.ofType(PractitionerRole).organization.exists()"
Severity: #error

// Guidance: Use urn:uuid fullUrls and internal references inside resources.


//EXAMPLE
Instance: register-facility-bundle-001
InstanceOf: NgImmRegisterFacilityBundle
Title: "Register Facility Transaction"
Description: "Registers a new PHC facility with its location, a practitioner, and their role."
* type = #transaction
* timestamp = "2025-08-17T11:20:00+01:00"

// --- Organization ---
* entry[organization].fullUrl = "urn:uuid:org-001"
* entry[organization].resource = organization-001
* entry[organization].request.method = #POST
* entry[organization].request.url = "Organization"

// --- Location (managed by organization) ---
* entry[location].fullUrl = "urn:uuid:loc-001"
* entry[location].resource = location-001
* entry[location].request.method = #POST
* entry[location].request.url = "Location"

// Ensure the Location points to the Organization in-bundle
* entry[location].resource.managingOrganization.reference = "urn:uuid:org-001"

// --- Practitioner ---
* entry[practitioner].fullUrl = "urn:uuid:prac-001"
* entry[practitioner].resource = practitioner-001
* entry[practitioner].request.method = #POST
* entry[practitioner].request.url = "Practitioner"

// --- PractitionerRole (links practitioner ↔ org/location) ---
* entry[practitionerrole].fullUrl = "urn:uuid:prrole-001"
* entry[practitionerrole].resource = practitionerrole-001
* entry[practitionerrole].request.method = #POST
* entry[practitionerrole].request.url = "PractitionerRole"

// Wire the role references to in-bundle resources
* entry[practitionerrole].resource.practitioner.reference = "urn:uuid:prac-001"
* entry[practitionerrole].resource.organization.reference = "urn:uuid:org-001"
* entry[practitionerrole].resource.location[0].reference = "urn:uuid:loc-001"
