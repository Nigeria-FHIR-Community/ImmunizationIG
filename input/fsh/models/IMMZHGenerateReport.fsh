
Logical:      IMMZGGenerateReport
Title:        "NG-Imm-H GenerateReport[information only]"
Description:  "IMMZ.H - Data elements for the IMMZ.G Report Generation Data Dictionary." 
* ^name = "IMMZHGenerateReport"
* ^status = #active

* reportIdentification 1..1 SU string "Report Identification" "A unique identifier for the instance of the report that has been generated"
* reportStatus 1..1 SU CodeableConcept "Report Status" "The status of the report (for example, initial, complete, etc.)"
  * ^code[+] = #NGVerificationStatusVS
* reportType 1..1 SU string "Report Type" "The type of report which has been generated (i.e., list of individuals, summary, etc.)"
* reportIndicatorCode 1..1 SU string "Report Indicator Code" "The indicator or measure definition being reported on (e.g., dropout rate, defaulters, etc.)"
* numberOfDosesPerVial 1..1 SU integer "Number of doses per vial" "The number of doses contained within a vial"
* minimumStock 1..1 SU integer "Minimum Stock" "25% of the vaccine requirement in a facility during the reporting month"
* maximumStock 1..1 SU integer "Maximum Stock" "125% of the vaccine requirement in a facility during the reporting month"
* openingBalance 1..1 SU integer "Opening balance" "The initial quantity of vials in stock at the beginning of a specific reporting period"
* quantityReceived 1..1 SU integer "Quantity received" "The quantity of vaccines/diluents received during the reporting month."
* dosesOpened 1..1 SU integer "Doses opened" "The quantity of vaccines/diluents opened in doses during the reporting month."
* dosesReturned 1..1 SU integer "Doses returned to LGA/Facility" "The quantity of vaccines/diluents returned in doses to the LGA during the reporting month."
* stockDiscarded 1..1 SU integer "Stock discarded" "The quantity of vaccine/diluent discarded in doses"
* stockDiscardedType 1..1 SU code "Stock discarded type" "The reason vaccine was discarded"
* aefiCaseRate 1..1 SU decimal "AEFI Case Rate" "An indicator for the assessment of a particular vaccine's Adverse Event Following Immunization (AEFI) case rate."
* openVialWastage 1..1 SU decimal "Open Vial Wastage" "A measure of the percentage of doses of a vaccine that were opened but discarded due to under-utilization"
* closedVialWastage 1..1 SU decimal "Closed Vial Wastage" "A measure of the percentage of doses of a vaccine that were spoiled due to reasons such as expiry, freezing, breakage, etc."
* reportSubjectArea 1..1 SU string "Report Subject Area" "Location (facility or place) for which the data in the report is being represented."
* reportGenerationDate 1..1 SU dateTime "Report Generation Date" "The date and time on which the report was generated."
* reportingPeriodStart 1..1 SU dateTime "Reporting Period Start" "The start date of the reporting period for which data in the report has been included."
* reportingPeriodEnd 1..1 SU dateTime "Reporting Period End" "The end date of the reporting period for which data in the report has been included."
* improvementIndicator 1..1 SU code "Improvement Indicator" "Indicates to the receiver how to interpret the data (i.e., what constitutes an improvement or deterioration)"
* reportGenerator 1..1 SU string "Report Generator / Author" "Indicates the organization, or location which is generating or producing the report"
* measureIdentifier 1..1 SU string "Measure Identifier / Meaning" "Represents the name of the report/indicator. It codifies the meaning of the group / measure."
* measuredScore 1..1 SU decimal "Measured Score" "The calculated score of the measure / indicator which is being reported on."
* measureNumerator 1..1 SU integer "Measure Numerator" "The count of individual objects (persons, doses, etc.) which was used as the numerator to calculate the measure score."
* measureDenominator 1..1 SU integer "Measure Denominator" "The count of individual objects (persons, doses, etc.) which was used as the denominator to calculate the measure score."
* disaggregationGroup 1..1 SU code "Disaggregation Group" "Indicates the overall strata or disaggregation which is being represented in the report."
* bySex 1..1 SU boolean "By-Sex" "Represents a disaggregation grouped by the indicator population's sex values."
* byRegion 1..1 SU boolean "By-Region" "Represents a disaggregation grouped by the indicator population's administrative regions."
* byAgeGroup 1..1 SU boolean "By-Age Group" "Represents a disaggregation grouped by the indicator population's age groups."
* byDoseNumber 1..1 SU boolean "By-Dose Number" "Represents a disaggregation grouped by the indicator population's dose numbers for a specific vaccine."
* byVaccineType 1..1 SU boolean "By-Vaccine Type" "Represents a disaggregation grouped by the indicator population's vaccine types."
* byVaccineManufacturer 1..1 SU boolean "By-Vaccine Manufacturer" "Represents a disaggregation grouped by the indicator population's vaccine manufacturers for a specific vaccine."
* byReactionManifestation 1..1 SU boolean "By-Reaction Manifestation" "Represents a disaggregation grouped by the indicator population's reaction manifestations for a specific vaccine."
* byOccupation 1..1 SU boolean "By-Occupation" "Represents a disaggregation grouped by the indicator population's occupations."
* disaggregationMeasureIdentifier 1..1 SU string "Disaggregation Measure Identifier / Meaning" "The type or value of this stratum represents (male, female, region 1, dose 3, etc.). This value depends on the Disaggregation Group data element."
* disaggregationNumerator 1..1 SU integer "Disaggregation Numerator" "The count of individual objects (persons, doses, etc.) which were used as the numerator for the disaggregation score."
* disaggregationDenominator 1..1 SU integer "Disaggregation Denominator" "The count of individual objects (persons, doses, etc.) which were used as the denominator for the disaggregation score."
* disaggregatedScore 1..1 SU decimal "Disaggregated Score" "The computed score for this disaggregation, which is the numerator divided by the denominator for this collection (i.e. population) of records."

Instance: RoutineImmunizationReport
InstanceOf: IMMZGGenerateReport
Title: "NG-Imm Routine Immunization Report - Facility A"
Description: "A routine monthly immunization report summarizing vaccine stock and usage for Facility A."

* reportIdentification = "IMMZ-REP-202503"
* reportStatus = #IMMZ.G.DE3
* reportType = #IMMZ.G.DE7
* reportIndicatorCode = #IMMZ.G.DE10
* numberOfDosesPerVial = 10
* minimumStock = 50
* maximumStock = 200
* openingBalance = 120
* quantityReceived = 80
* dosesOpened = 70
* dosesReturned = 5
* stockDiscarded = 10
* stockDiscardedType = #IMMZ.G.DE22
* aefiCaseRate = 0.05
* openVialWastage = 0.02
* closedVialWastage = 0.01
* reportSubjectArea = "Health Facility A"
* reportGenerationDate = "2025-03-01T08:00:00Z"
* reportingPeriodStart = "2025-02-01T00:00:00Z"
* reportingPeriodEnd = "2025-02-28T23:59:59Z"
* improvementIndicator = #IMMZ.G.DE35
* reportGenerator = "Health Facility A Reporting System"
* measureIdentifier = "DTP3 Coverage Rate"
* measuredScore = 85.5
* measureNumerator = 1200
* measureDenominator = 1400
* disaggregationGroup =  #IMMZ.G.DE45
* bySex = true
* byRegion = false
* byAgeGroup = true
* byDoseNumber = false
* byVaccineType = true
* byVaccineManufacturer = false
* byReactionManifestation = false
* byOccupation = false
* disaggregationMeasureIdentifier = "Children 12-23 months"
* disaggregationNumerator = 600
* disaggregationDenominator = 700
* disaggregatedScore = 85.7



Instance: AEFI-Case-Report-202503
InstanceOf: IMMZGGenerateReport
Title: "NG-Imm Example AEFI case report"
Description: "An example case of Adverse Event Following Immunization Report"
Usage: #example
* reportIdentification = "AEFI-CASE-202503"
* reportStatus = #IMMZ.G.DE4
* reportType = #IMMZ.G.DE8
* reportIndicatorCode = #IMMZ.G.DE27
* numberOfDosesPerVial = 5
* minimumStock = 30
* maximumStock = 100
* openingBalance = 50
* quantityReceived = 40
* dosesOpened = 35
* dosesReturned = 3
* stockDiscarded = 2
* stockDiscardedType = #IMMZ.G.DE26
* aefiCaseRate = 0.08
* openVialWastage = 0.03
* closedVialWastage = 0.02
* reportSubjectArea = "Health Facility B"
* reportGenerationDate = "2025-03-10T12:30:00Z"
* reportingPeriodStart = "2025-02-01T00:00:00Z"
* reportingPeriodEnd = "2025-02-28T23:59:59Z"
* improvementIndicator = #IMMZ.G.DE35
* reportGenerator = "Health Facility B Surveillance System"
* measureIdentifier = "AEFI Incidence Rate"
* measuredScore = 8.0
* measureNumerator = 40
* measureDenominator = 500
* disaggregationGroup = #IMMZ.G.DE49
* bySex = true
* byRegion = true
* byAgeGroup = false
* byDoseNumber = true
* byVaccineType = true
* byVaccineManufacturer = true
* byReactionManifestation = true
* byOccupation = false
* disaggregationMeasureIdentifier = "Severe Allergic Reaction"
* disaggregationNumerator = 5
* disaggregationDenominator = 40
* disaggregatedScore = 12.5


Instance: Vaccine-Stock-Report-202503
InstanceOf: IMMZGGenerateReport
Title: "NG-Imm Example Stock report"
Description: "An example Stock management report"
Usage: #example
* reportIdentification = "VAX-STOCK-202503"
* reportStatus = #IMMZ.G.DE3
* reportType = #IMMZ.G.DE9
* reportIndicatorCode = #IMMZ.G.DE14
* numberOfDosesPerVial = 20
* minimumStock = 100
* maximumStock = 500
* openingBalance = 350
* quantityReceived = 200
* dosesOpened = 180
* dosesReturned = 10
* stockDiscarded = 20
* stockDiscardedType = #IMMZ.G.DE23
* aefiCaseRate = 0.02
* openVialWastage = 0.01
* closedVialWastage = 0.015
* reportSubjectArea = "District Vaccine Store"
* reportGenerationDate = "2025-03-05T10:00:00Z"
* reportingPeriodStart = "2025-02-01T00:00:00Z"
* reportingPeriodEnd = "2025-02-28T23:59:59Z"
* improvementIndicator = #IMMZ.G.DE35
* reportGenerator = "District Vaccine Store Management System"
* measureIdentifier = "Vaccine Utilization Rate"
* measuredScore = 95.0
* measureNumerator = 950
* measureDenominator = 1000
* disaggregationGroup = #IMMZ.G.DE47
* bySex = false
* byRegion = true
* byAgeGroup = false
* byDoseNumber = true
* byVaccineType = true
* byVaccineManufacturer = true
* byReactionManifestation = false
* byOccupation = false
* disaggregationMeasureIdentifier = "Measles Vaccine"
* disaggregationNumerator = 400
* disaggregationDenominator = 450
* disaggregatedScore = 88.9

