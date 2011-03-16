require 'adwords_api/v201003/TargetingIdeaService'
require 'soap/mapping'

module AdwordsApi; module V201003; module TargetingIdeaService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV201003 = "https://adwords.google.com/api/adwords/cm/v201003"
  NsV201003_0 = "https://adwords.google.com/api/adwords/o/v201003"

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::AdGroupCriterionError,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupCriterionError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::AdGroupCriterionErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::AdGroupCriterionLimitExceeded,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupCriterionLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201003, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]],
      ["limitType", "AdwordsApi::V201003::TargetingIdeaService::AdGroupCriterionLimitExceededCriteriaLimitType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::AdScheduleTarget,
    :schema_type => XSD::QName.new(NsV201003, "AdScheduleTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["dayOfWeek", "AdwordsApi::V201003::TargetingIdeaService::DayOfWeek", [0, 1]],
      ["startHour", "SOAP::SOAPInt", [0, 1]],
      ["startMinute", "AdwordsApi::V201003::TargetingIdeaService::MinuteOfHour", [0, 1]],
      ["endHour", "SOAP::SOAPInt", [0, 1]],
      ["endMinute", "AdwordsApi::V201003::TargetingIdeaService::MinuteOfHour", [0, 1]],
      ["bidMultiplier", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::Address,
    :schema_type => XSD::QName.new(NsV201003, "Address"),
    :schema_element => [
      ["streetAddress", "SOAP::SOAPString", [0, 1]],
      ["streetAddress2", "SOAP::SOAPString", [0, 1]],
      ["cityName", "SOAP::SOAPString", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]],
      ["provinceName", "SOAP::SOAPString", [0, 1]],
      ["postalCode", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::AgeTarget,
    :schema_type => XSD::QName.new(NsV201003, "AgeTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["age", "AdwordsApi::V201003::TargetingIdeaService::AgeTargetAge", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201003, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201003, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::BiddingError,
    :schema_type => XSD::QName.new(NsV201003, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::BiddingErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::BudgetError,
    :schema_type => XSD::QName.new(NsV201003, "BudgetError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::BudgetErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::CityTarget,
    :schema_type => XSD::QName.new(NsV201003, "CityTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["cityName", "SOAP::SOAPString", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201003, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::CountryTarget,
    :schema_type => XSD::QName.new(NsV201003, "CountryTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::CriterionPolicyError,
    :schema_type => XSD::QName.new(NsV201003, "CriterionPolicyError"),
    :schema_basetype => XSD::QName.new(NsV201003, "PolicyViolationError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V201003::TargetingIdeaService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V201003::TargetingIdeaService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::DateError,
    :schema_type => XSD::QName.new(NsV201003, "DateError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::DateErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::DistinctError,
    :schema_type => XSD::QName.new(NsV201003, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::DistinctErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::DoubleValue,
    :schema_type => XSD::QName.new(NsV201003, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV201003, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::EntityCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV201003, "EntityCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV201003, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::EntityNotFoundReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::GenderTarget,
    :schema_type => XSD::QName.new(NsV201003, "GenderTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["gender", "AdwordsApi::V201003::TargetingIdeaService::GenderTargetGender", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::GeoPoint,
    :schema_type => XSD::QName.new(NsV201003, "GeoPoint"),
    :schema_element => [
      ["latitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]],
      ["longitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201003, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::InternalApiErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::Keyword,
    :schema_type => XSD::QName.new(NsV201003, "Keyword"),
    :schema_basetype => XSD::QName.new(NsV201003, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Criterion.Type")], [0, 1]],
      ["text", "SOAP::SOAPString", [0, 1]],
      ["matchType", "AdwordsApi::V201003::TargetingIdeaService::KeywordMatchType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV201003, "LanguageTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["languageCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::LongValue,
    :schema_type => XSD::QName.new(NsV201003, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV201003, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::MetroTarget,
    :schema_type => XSD::QName.new(NsV201003, "MetroTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["metroCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::MobileCarrierTarget,
    :schema_type => XSD::QName.new(NsV201003, "MobileCarrierTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "MobileTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["carrierName", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::MobilePlatformTarget,
    :schema_type => XSD::QName.new(NsV201003, "MobilePlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "MobileTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["platformName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::Money,
    :schema_type => XSD::QName.new(NsV201003, "Money"),
    :schema_basetype => XSD::QName.new(NsV201003, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::NetworkTarget,
    :schema_type => XSD::QName.new(NsV201003, "NetworkTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["networkCoverageType", "AdwordsApi::V201003::TargetingIdeaService::NetworkCoverageType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201003, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201003, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::NullError,
    :schema_type => XSD::QName.new(NsV201003, "NullError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::NullErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::Paging,
    :schema_type => XSD::QName.new(NsV201003, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::Placement,
    :schema_type => XSD::QName.new(NsV201003, "Placement"),
    :schema_basetype => XSD::QName.new(NsV201003, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Criterion.Type")], [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::PlatformTarget,
    :schema_type => XSD::QName.new(NsV201003, "PlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["platformType", "AdwordsApi::V201003::TargetingIdeaService::PlatformType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::PolicyViolationErrorPart,
    :schema_type => XSD::QName.new(NsV201003, "PolicyViolationError.Part"),
    :schema_element => [
      ["index", "SOAP::SOAPInt", [0, 1]],
      ["length", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::PolicyViolationKey,
    :schema_type => XSD::QName.new(NsV201003, "PolicyViolationKey"),
    :schema_element => [
      ["policyName", "SOAP::SOAPString", [0, 1]],
      ["violatingText", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::PolygonTarget,
    :schema_type => XSD::QName.new(NsV201003, "PolygonTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["vertices", "AdwordsApi::V201003::TargetingIdeaService::GeoPoint[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::ProvinceTarget,
    :schema_type => XSD::QName.new(NsV201003, "ProvinceTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::ProximityTarget,
    :schema_type => XSD::QName.new(NsV201003, "ProximityTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["geoPoint", "AdwordsApi::V201003::TargetingIdeaService::GeoPoint", [0, 1]],
      ["radiusDistanceUnits", "AdwordsApi::V201003::TargetingIdeaService::ProximityTargetDistanceUnits", [0, 1]],
      ["radiusInUnits", "SOAP::SOAPDouble", [0, 1]],
      ["address", "AdwordsApi::V201003::TargetingIdeaService::Address", [0, 1]],
      ["allowServiceOfAddress", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201003, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201003, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::RangeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201003, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV201003, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::RegionCodeError,
    :schema_type => XSD::QName.new(NsV201003, "RegionCodeError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::RegionCodeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::RequestError,
    :schema_type => XSD::QName.new(NsV201003, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::RequestErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::RequiredError,
    :schema_type => XSD::QName.new(NsV201003, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::RequiredErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201003, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::SoapHeader,
    :schema_type => XSD::QName.new(NsV201003, "SoapHeader"),
    :schema_element => [
      ["authToken", "SOAP::SOAPString", [0, 1]],
      ["clientCustomerId", "SOAP::SOAPString", [0, 1]],
      ["clientEmail", "SOAP::SOAPString", [0, 1]],
      ["developerToken", "SOAP::SOAPString", [0, 1]],
      ["userAgent", "SOAP::SOAPString", [0, 1]],
      ["validateOnly", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201003, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV201003, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::StringLengthError,
    :schema_type => XSD::QName.new(NsV201003, "StringLengthError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::StringLengthErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::TargetError,
    :schema_type => XSD::QName.new(NsV201003, "TargetError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::TargetErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::Vertical,
    :schema_type => XSD::QName.new(NsV201003, "Vertical"),
    :schema_basetype => XSD::QName.new(NsV201003, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Criterion.Type")], [0, 1]],
      ["path", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201003, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::DatabaseErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::PolicyViolationError,
    :schema_type => XSD::QName.new(NsV201003, "PolicyViolationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V201003::TargetingIdeaService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V201003::TargetingIdeaService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::ApiException,
    :schema_type => XSD::QName.new(NsV201003, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201003::TargetingIdeaService::ApiError[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201003, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApplicationException.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::Criterion,
    :schema_type => XSD::QName.new(NsV201003, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Criterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::AdFormatSpec,
    :schema_type => XSD::QName.new(NsV201003_0, "AdFormatSpec"),
    :schema_element => [
      ["format", "AdwordsApi::V201003::TargetingIdeaService::SiteConstantsAdFormat", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::AdFormatSpecListAttribute,
    :schema_type => XSD::QName.new(NsV201003_0, "AdFormatSpecListAttribute"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201003::TargetingIdeaService::AdFormatSpec[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::AdTypeSearchParameter,
    :schema_type => XSD::QName.new(NsV201003_0, "AdTypeSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "SearchParameter.Type")], [0, 1]],
      ["adTypes", "AdwordsApi::V201003::TargetingIdeaService::SiteConstantsAdType[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::BooleanAttribute,
    :schema_type => XSD::QName.new(NsV201003_0, "BooleanAttribute"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::CollectionSizeError,
    :schema_type => XSD::QName.new(NsV201003_0, "CollectionSizeError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "fieldPath")], [0, 1]],
      ["trigger", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "trigger")], [0, 1]],
      ["errorString", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "errorString")], [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::CollectionSizeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::CompetitionSearchParameter,
    :schema_type => XSD::QName.new(NsV201003_0, "CompetitionSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "SearchParameter.Type")], [0, 1]],
      ["levels", "AdwordsApi::V201003::TargetingIdeaService::CompetitionSearchParameterLevel[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::DoubleAttribute,
    :schema_type => XSD::QName.new(NsV201003_0, "DoubleAttribute"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::DoubleComparisonOperation,
    :schema_type => XSD::QName.new(NsV201003_0, "DoubleComparisonOperation"),
    :schema_element => [
      ["minimum", "SOAP::SOAPDouble", [0, 1]],
      ["maximum", "SOAP::SOAPDouble", [0, 1]],
      ["excludes", "SOAP::SOAPDouble[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::IdeaTextMatchesSearchParameter,
    :schema_type => XSD::QName.new(NsV201003_0, "IdeaTextMatchesSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "SearchParameter.Type")], [0, 1]],
      ["included", "SOAP::SOAPString[]", [0, nil]],
      ["excluded", "SOAP::SOAPString[]", [0, nil]],
      ["priorityAction", "AdwordsApi::V201003::TargetingIdeaService::MatchAction", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::IdeaTypeAttribute,
    :schema_type => XSD::QName.new(NsV201003_0, "IdeaTypeAttribute"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201003::TargetingIdeaService::IdeaType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::InStreamAdInfo,
    :schema_type => XSD::QName.new(NsV201003_0, "InStreamAdInfo"),
    :schema_element => [
      ["maxAdDuration", "SOAP::SOAPInt", [0, 1]],
      ["minAdDuration", "SOAP::SOAPInt", [0, 1]],
      ["medianAdDuration", "SOAP::SOAPInt", [0, 1]],
      ["preRollPercent", "SOAP::SOAPDouble", [0, 1]],
      ["midRollPercent", "SOAP::SOAPDouble", [0, 1]],
      ["postRollPercent", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::InStreamAdInfoAttribute,
    :schema_type => XSD::QName.new(NsV201003_0, "InStreamAdInfoAttribute"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201003::TargetingIdeaService::InStreamAdInfo", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::IncludeAdultContentSearchParameter,
    :schema_type => XSD::QName.new(NsV201003_0, "IncludeAdultContentSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "SearchParameter.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::IntegerAttribute,
    :schema_type => XSD::QName.new(NsV201003_0, "IntegerAttribute"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::IntegerSetAttribute,
    :schema_type => XSD::QName.new(NsV201003_0, "IntegerSetAttribute"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPInt[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::KeywordCategoryIdSearchParameter,
    :schema_type => XSD::QName.new(NsV201003_0, "KeywordCategoryIdSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "SearchParameter.Type")], [0, 1]],
      ["categoryId", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::KeywordMatchTypeSearchParameter,
    :schema_type => XSD::QName.new(NsV201003_0, "KeywordMatchTypeSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "SearchParameter.Type")], [0, 1]],
      ["keywordMatchTypes", "AdwordsApi::V201003::TargetingIdeaService::KeywordMatchType[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::LongAttribute,
    :schema_type => XSD::QName.new(NsV201003_0, "LongAttribute"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::LongComparisonOperation,
    :schema_type => XSD::QName.new(NsV201003_0, "LongComparisonOperation"),
    :schema_element => [
      ["minimum", "SOAP::SOAPLong", [0, 1]],
      ["maximum", "SOAP::SOAPLong", [0, 1]],
      ["excludes", "SOAP::SOAPLong[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::MobileSearchParameter,
    :schema_type => XSD::QName.new(NsV201003_0, "MobileSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "SearchParameter.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::MonthlySearchVolume,
    :schema_type => XSD::QName.new(NsV201003_0, "MonthlySearchVolume"),
    :schema_element => [
      ["year", "SOAP::SOAPInt", [0, 1]],
      ["month", "SOAP::SOAPInt", [0, 1]],
      ["count", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::MonthlySearchVolumeAttribute,
    :schema_type => XSD::QName.new(NsV201003_0, "MonthlySearchVolumeAttribute"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201003::TargetingIdeaService::MonthlySearchVolume[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::PlacementTypeAttribute,
    :schema_type => XSD::QName.new(NsV201003_0, "PlacementTypeAttribute"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201003::TargetingIdeaService::SiteConstantsPlacementType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::PlacementTypeSearchParameter,
    :schema_type => XSD::QName.new(NsV201003_0, "PlacementTypeSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "SearchParameter.Type")], [0, 1]],
      ["placementTypes", "AdwordsApi::V201003::TargetingIdeaService::SiteConstantsPlacementType[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::RelatedToUrlSearchParameter,
    :schema_type => XSD::QName.new(NsV201003_0, "RelatedToUrlSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "SearchParameter.Type")], [0, 1]],
      ["urls", "SOAP::SOAPString[]", [0, nil]],
      ["includeSubUrls", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::SearchShareSearchParameter,
    :schema_type => XSD::QName.new(NsV201003_0, "SearchShareSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "SearchParameter.Type")], [0, 1]],
      ["operation", "AdwordsApi::V201003::TargetingIdeaService::DoubleComparisonOperation", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::SeedAdGroupIdSearchParameter,
    :schema_type => XSD::QName.new(NsV201003_0, "SeedAdGroupIdSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "SearchParameter.Type")], [0, 1]],
      ["adGroupId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::StringAttribute,
    :schema_type => XSD::QName.new(NsV201003_0, "StringAttribute"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::TargetingIdeaError,
    :schema_type => XSD::QName.new(NsV201003_0, "TargetingIdeaError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "fieldPath")], [0, 1]],
      ["trigger", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "trigger")], [0, 1]],
      ["errorString", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "errorString")], [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::TargetingIdeaErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::WebpageDescriptor,
    :schema_type => XSD::QName.new(NsV201003_0, "WebpageDescriptor"),
    :schema_element => [
      ["url", "SOAP::SOAPString", [0, 1]],
      ["title", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::WebpageDescriptorAttribute,
    :schema_type => XSD::QName.new(NsV201003_0, "WebpageDescriptorAttribute"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201003::TargetingIdeaService::WebpageDescriptor", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::AdShareSearchParameter,
    :schema_type => XSD::QName.new(NsV201003_0, "AdShareSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "SearchParameter.Type")], [0, 1]],
      ["operation", "AdwordsApi::V201003::TargetingIdeaService::DoubleComparisonOperation", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::AverageTargetedMonthlySearchesSearchParameter,
    :schema_type => XSD::QName.new(NsV201003_0, "AverageTargetedMonthlySearchesSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "SearchParameter.Type")], [0, 1]],
      ["operation", "AdwordsApi::V201003::TargetingIdeaService::LongComparisonOperation", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::GlobalMonthlySearchesSearchParameter,
    :schema_type => XSD::QName.new(NsV201003_0, "GlobalMonthlySearchesSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "SearchParameter.Type")], [0, 1]],
      ["operation", "AdwordsApi::V201003::TargetingIdeaService::LongComparisonOperation", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::MoneyAttribute,
    :schema_type => XSD::QName.new(NsV201003_0, "MoneyAttribute"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201003::TargetingIdeaService::Money", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::C_Range,
    :schema_type => XSD::QName.new(NsV201003_0, "Range"),
    :schema_element => [
      ["min", "AdwordsApi::V201003::TargetingIdeaService::ComparableValue", [0, 1]],
      ["max", "AdwordsApi::V201003::TargetingIdeaService::ComparableValue", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::CountryTargetSearchParameter,
    :schema_type => XSD::QName.new(NsV201003_0, "CountryTargetSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "SearchParameter.Type")], [0, 1]],
      ["countryTargets", "AdwordsApi::V201003::TargetingIdeaService::CountryTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::LanguageTargetSearchParameter,
    :schema_type => XSD::QName.new(NsV201003_0, "LanguageTargetSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "SearchParameter.Type")], [0, 1]],
      ["languageTargets", "AdwordsApi::V201003::TargetingIdeaService::LanguageTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::LongRangeAttribute,
    :schema_type => XSD::QName.new(NsV201003_0, "LongRangeAttribute"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201003::TargetingIdeaService::C_Range", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::ExcludedKeywordSearchParameter,
    :schema_type => XSD::QName.new(NsV201003_0, "ExcludedKeywordSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "SearchParameter.Type")], [0, 1]],
      ["keywords", "AdwordsApi::V201003::TargetingIdeaService::Keyword[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::KeywordAttribute,
    :schema_type => XSD::QName.new(NsV201003_0, "KeywordAttribute"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201003::TargetingIdeaService::Keyword", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::PlacementAttribute,
    :schema_type => XSD::QName.new(NsV201003_0, "PlacementAttribute"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201003::TargetingIdeaService::Placement", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::RelatedToKeywordSearchParameter,
    :schema_type => XSD::QName.new(NsV201003_0, "RelatedToKeywordSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "SearchParameter.Type")], [0, 1]],
      ["keywords", "AdwordsApi::V201003::TargetingIdeaService::Keyword[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::TargetingIdeaSelector,
    :schema_type => XSD::QName.new(NsV201003_0, "TargetingIdeaSelector"),
    :schema_element => [
      ["searchParameters", "AdwordsApi::V201003::TargetingIdeaService::SearchParameter[]", [0, nil]],
      ["ideaType", "AdwordsApi::V201003::TargetingIdeaService::IdeaType", [0, 1]],
      ["requestType", "AdwordsApi::V201003::TargetingIdeaService::RequestType", [0, 1]],
      ["requestedAttributeTypes", "AdwordsApi::V201003::TargetingIdeaService::AttributeType[]", [0, nil]],
      ["paging", "AdwordsApi::V201003::TargetingIdeaService::Paging", [0, 1]],
      ["localeCode", "SOAP::SOAPString", [0, 1]],
      ["currencyCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::Type_AttributeMapEntry,
    :schema_type => XSD::QName.new(NsV201003_0, "Type_AttributeMapEntry"),
    :schema_element => [
      ["key", "AdwordsApi::V201003::TargetingIdeaService::AttributeType", [0, 1]],
      ["value", "AdwordsApi::V201003::TargetingIdeaService::Attribute", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::TargetingIdea,
    :schema_type => XSD::QName.new(NsV201003_0, "TargetingIdea"),
    :schema_element => [
      ["data", "AdwordsApi::V201003::TargetingIdeaService::Type_AttributeMapEntry[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::TargetingIdeaPage,
    :schema_type => XSD::QName.new(NsV201003_0, "TargetingIdeaPage"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["entries", "AdwordsApi::V201003::TargetingIdeaService::TargetingIdea[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::AdGroupCriterionErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupCriterionError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::AdGroupCriterionLimitExceededCriteriaLimitType,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupCriterionLimitExceeded.CriteriaLimitType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::AgeTargetAge,
    :schema_type => XSD::QName.new(NsV201003, "AgeTarget.Age")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AuthenticationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AuthorizationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "BiddingError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::BudgetErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "BudgetError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "ClientTermsError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "DatabaseError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "DateError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::DayOfWeek,
    :schema_type => XSD::QName.new(NsV201003, "DayOfWeek")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "DistinctError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::EntityCountLimitExceededReason,
    :schema_type => XSD::QName.new(NsV201003, "EntityCountLimitExceeded.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV201003, "EntityNotFound.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::GenderTargetGender,
    :schema_type => XSD::QName.new(NsV201003, "GenderTarget.Gender")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "InternalApiError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::KeywordMatchType,
    :schema_type => XSD::QName.new(NsV201003, "KeywordMatchType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::MinuteOfHour,
    :schema_type => XSD::QName.new(NsV201003, "MinuteOfHour")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::NetworkCoverageType,
    :schema_type => XSD::QName.new(NsV201003, "NetworkCoverageType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NotEmptyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NotWhitelistedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NullError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::PlatformType,
    :schema_type => XSD::QName.new(NsV201003, "PlatformType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::ProximityTargetDistanceUnits,
    :schema_type => XSD::QName.new(NsV201003, "ProximityTarget.DistanceUnits")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "QuotaCheckError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RangeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RateExceededError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "ReadOnlyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::RegionCodeErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RegionCodeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RequestError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RequiredError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "SizeLimitError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "StatsQueryError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::StringLengthErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "StringLengthError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::TargetErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "TargetError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::AttributeType,
    :schema_type => XSD::QName.new(NsV201003_0, "AttributeType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::CollectionSizeErrorReason,
    :schema_type => XSD::QName.new(NsV201003_0, "CollectionSizeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::CompetitionSearchParameterLevel,
    :schema_type => XSD::QName.new(NsV201003_0, "CompetitionSearchParameter.Level")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::IdeaType,
    :schema_type => XSD::QName.new(NsV201003_0, "IdeaType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::MatchAction,
    :schema_type => XSD::QName.new(NsV201003_0, "MatchAction")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::RequestType,
    :schema_type => XSD::QName.new(NsV201003_0, "RequestType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::SiteConstantsAdFormat,
    :schema_type => XSD::QName.new(NsV201003_0, "SiteConstants.AdFormat")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::SiteConstantsAdType,
    :schema_type => XSD::QName.new(NsV201003_0, "SiteConstants.AdType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::SiteConstantsPlacementType,
    :schema_type => XSD::QName.new(NsV201003_0, "SiteConstants.PlacementType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::TargetingIdeaErrorReason,
    :schema_type => XSD::QName.new(NsV201003_0, "TargetingIdeaError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::AdGroupCriterionError,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupCriterionError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::AdGroupCriterionErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::AdGroupCriterionLimitExceeded,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupCriterionLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201003, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]],
      ["limitType", "AdwordsApi::V201003::TargetingIdeaService::AdGroupCriterionLimitExceededCriteriaLimitType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::AdScheduleTarget,
    :schema_type => XSD::QName.new(NsV201003, "AdScheduleTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["dayOfWeek", "AdwordsApi::V201003::TargetingIdeaService::DayOfWeek", [0, 1]],
      ["startHour", "SOAP::SOAPInt", [0, 1]],
      ["startMinute", "AdwordsApi::V201003::TargetingIdeaService::MinuteOfHour", [0, 1]],
      ["endHour", "SOAP::SOAPInt", [0, 1]],
      ["endMinute", "AdwordsApi::V201003::TargetingIdeaService::MinuteOfHour", [0, 1]],
      ["bidMultiplier", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::Address,
    :schema_type => XSD::QName.new(NsV201003, "Address"),
    :schema_element => [
      ["streetAddress", "SOAP::SOAPString", [0, 1]],
      ["streetAddress2", "SOAP::SOAPString", [0, 1]],
      ["cityName", "SOAP::SOAPString", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]],
      ["provinceName", "SOAP::SOAPString", [0, 1]],
      ["postalCode", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::AgeTarget,
    :schema_type => XSD::QName.new(NsV201003, "AgeTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["age", "AdwordsApi::V201003::TargetingIdeaService::AgeTargetAge", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201003, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201003, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::BiddingError,
    :schema_type => XSD::QName.new(NsV201003, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::BiddingErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::BudgetError,
    :schema_type => XSD::QName.new(NsV201003, "BudgetError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::BudgetErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::CityTarget,
    :schema_type => XSD::QName.new(NsV201003, "CityTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["cityName", "SOAP::SOAPString", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201003, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::CountryTarget,
    :schema_type => XSD::QName.new(NsV201003, "CountryTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::CriterionPolicyError,
    :schema_type => XSD::QName.new(NsV201003, "CriterionPolicyError"),
    :schema_basetype => XSD::QName.new(NsV201003, "PolicyViolationError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V201003::TargetingIdeaService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V201003::TargetingIdeaService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::DateError,
    :schema_type => XSD::QName.new(NsV201003, "DateError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::DateErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::DistinctError,
    :schema_type => XSD::QName.new(NsV201003, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::DistinctErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::DoubleValue,
    :schema_type => XSD::QName.new(NsV201003, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV201003, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::EntityCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV201003, "EntityCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV201003, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::EntityNotFoundReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::GenderTarget,
    :schema_type => XSD::QName.new(NsV201003, "GenderTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["gender", "AdwordsApi::V201003::TargetingIdeaService::GenderTargetGender", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::GeoPoint,
    :schema_type => XSD::QName.new(NsV201003, "GeoPoint"),
    :schema_element => [
      ["latitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]],
      ["longitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201003, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::InternalApiErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::Keyword,
    :schema_type => XSD::QName.new(NsV201003, "Keyword"),
    :schema_basetype => XSD::QName.new(NsV201003, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Criterion.Type")], [0, 1]],
      ["text", "SOAP::SOAPString", [0, 1]],
      ["matchType", "AdwordsApi::V201003::TargetingIdeaService::KeywordMatchType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV201003, "LanguageTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["languageCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::LongValue,
    :schema_type => XSD::QName.new(NsV201003, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV201003, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::MetroTarget,
    :schema_type => XSD::QName.new(NsV201003, "MetroTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["metroCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::MobileCarrierTarget,
    :schema_type => XSD::QName.new(NsV201003, "MobileCarrierTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "MobileTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["carrierName", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::MobilePlatformTarget,
    :schema_type => XSD::QName.new(NsV201003, "MobilePlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "MobileTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["platformName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::Money,
    :schema_type => XSD::QName.new(NsV201003, "Money"),
    :schema_basetype => XSD::QName.new(NsV201003, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::NetworkTarget,
    :schema_type => XSD::QName.new(NsV201003, "NetworkTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["networkCoverageType", "AdwordsApi::V201003::TargetingIdeaService::NetworkCoverageType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201003, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201003, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::NullError,
    :schema_type => XSD::QName.new(NsV201003, "NullError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::NullErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::Paging,
    :schema_type => XSD::QName.new(NsV201003, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::Placement,
    :schema_type => XSD::QName.new(NsV201003, "Placement"),
    :schema_basetype => XSD::QName.new(NsV201003, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Criterion.Type")], [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::PlatformTarget,
    :schema_type => XSD::QName.new(NsV201003, "PlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["platformType", "AdwordsApi::V201003::TargetingIdeaService::PlatformType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::PolicyViolationErrorPart,
    :schema_type => XSD::QName.new(NsV201003, "PolicyViolationError.Part"),
    :schema_element => [
      ["index", "SOAP::SOAPInt", [0, 1]],
      ["length", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::PolicyViolationKey,
    :schema_type => XSD::QName.new(NsV201003, "PolicyViolationKey"),
    :schema_element => [
      ["policyName", "SOAP::SOAPString", [0, 1]],
      ["violatingText", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::PolygonTarget,
    :schema_type => XSD::QName.new(NsV201003, "PolygonTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["vertices", "AdwordsApi::V201003::TargetingIdeaService::GeoPoint[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::ProvinceTarget,
    :schema_type => XSD::QName.new(NsV201003, "ProvinceTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::ProximityTarget,
    :schema_type => XSD::QName.new(NsV201003, "ProximityTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["geoPoint", "AdwordsApi::V201003::TargetingIdeaService::GeoPoint", [0, 1]],
      ["radiusDistanceUnits", "AdwordsApi::V201003::TargetingIdeaService::ProximityTargetDistanceUnits", [0, 1]],
      ["radiusInUnits", "SOAP::SOAPDouble", [0, 1]],
      ["address", "AdwordsApi::V201003::TargetingIdeaService::Address", [0, 1]],
      ["allowServiceOfAddress", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201003, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201003, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::RangeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201003, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV201003, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::RegionCodeError,
    :schema_type => XSD::QName.new(NsV201003, "RegionCodeError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::RegionCodeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::RequestError,
    :schema_type => XSD::QName.new(NsV201003, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::RequestErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::RequiredError,
    :schema_type => XSD::QName.new(NsV201003, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::RequiredErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201003, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::SoapHeader,
    :schema_type => XSD::QName.new(NsV201003, "SoapHeader"),
    :schema_element => [
      ["authToken", "SOAP::SOAPString", [0, 1]],
      ["clientCustomerId", "SOAP::SOAPString", [0, 1]],
      ["clientEmail", "SOAP::SOAPString", [0, 1]],
      ["developerToken", "SOAP::SOAPString", [0, 1]],
      ["userAgent", "SOAP::SOAPString", [0, 1]],
      ["validateOnly", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201003, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV201003, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::StringLengthError,
    :schema_type => XSD::QName.new(NsV201003, "StringLengthError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::StringLengthErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::TargetError,
    :schema_type => XSD::QName.new(NsV201003, "TargetError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::TargetErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::Vertical,
    :schema_type => XSD::QName.new(NsV201003, "Vertical"),
    :schema_basetype => XSD::QName.new(NsV201003, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Criterion.Type")], [0, 1]],
      ["path", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201003, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::DatabaseErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::PolicyViolationError,
    :schema_type => XSD::QName.new(NsV201003, "PolicyViolationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V201003::TargetingIdeaService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V201003::TargetingIdeaService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::ApiException,
    :schema_type => XSD::QName.new(NsV201003, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201003::TargetingIdeaService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201003, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApplicationException.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::Criterion,
    :schema_type => XSD::QName.new(NsV201003, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Criterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::AdFormatSpec,
    :schema_type => XSD::QName.new(NsV201003_0, "AdFormatSpec"),
    :schema_element => [
      ["format", "AdwordsApi::V201003::TargetingIdeaService::SiteConstantsAdFormat", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::AdFormatSpecListAttribute,
    :schema_type => XSD::QName.new(NsV201003_0, "AdFormatSpecListAttribute"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201003::TargetingIdeaService::AdFormatSpec[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::AdTypeSearchParameter,
    :schema_type => XSD::QName.new(NsV201003_0, "AdTypeSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "SearchParameter.Type")], [0, 1]],
      ["adTypes", "AdwordsApi::V201003::TargetingIdeaService::SiteConstantsAdType[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::BooleanAttribute,
    :schema_type => XSD::QName.new(NsV201003_0, "BooleanAttribute"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::CollectionSizeError,
    :schema_type => XSD::QName.new(NsV201003_0, "CollectionSizeError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "fieldPath")], [0, 1]],
      ["trigger", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "trigger")], [0, 1]],
      ["errorString", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "errorString")], [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::CollectionSizeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::CompetitionSearchParameter,
    :schema_type => XSD::QName.new(NsV201003_0, "CompetitionSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "SearchParameter.Type")], [0, 1]],
      ["levels", "AdwordsApi::V201003::TargetingIdeaService::CompetitionSearchParameterLevel[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::DoubleAttribute,
    :schema_type => XSD::QName.new(NsV201003_0, "DoubleAttribute"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::DoubleComparisonOperation,
    :schema_type => XSD::QName.new(NsV201003_0, "DoubleComparisonOperation"),
    :schema_element => [
      ["minimum", "SOAP::SOAPDouble", [0, 1]],
      ["maximum", "SOAP::SOAPDouble", [0, 1]],
      ["excludes", "SOAP::SOAPDouble[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::IdeaTextMatchesSearchParameter,
    :schema_type => XSD::QName.new(NsV201003_0, "IdeaTextMatchesSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "SearchParameter.Type")], [0, 1]],
      ["included", "SOAP::SOAPString[]", [0, nil]],
      ["excluded", "SOAP::SOAPString[]", [0, nil]],
      ["priorityAction", "AdwordsApi::V201003::TargetingIdeaService::MatchAction", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::IdeaTypeAttribute,
    :schema_type => XSD::QName.new(NsV201003_0, "IdeaTypeAttribute"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201003::TargetingIdeaService::IdeaType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::InStreamAdInfo,
    :schema_type => XSD::QName.new(NsV201003_0, "InStreamAdInfo"),
    :schema_element => [
      ["maxAdDuration", "SOAP::SOAPInt", [0, 1]],
      ["minAdDuration", "SOAP::SOAPInt", [0, 1]],
      ["medianAdDuration", "SOAP::SOAPInt", [0, 1]],
      ["preRollPercent", "SOAP::SOAPDouble", [0, 1]],
      ["midRollPercent", "SOAP::SOAPDouble", [0, 1]],
      ["postRollPercent", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::InStreamAdInfoAttribute,
    :schema_type => XSD::QName.new(NsV201003_0, "InStreamAdInfoAttribute"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201003::TargetingIdeaService::InStreamAdInfo", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::IncludeAdultContentSearchParameter,
    :schema_type => XSD::QName.new(NsV201003_0, "IncludeAdultContentSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "SearchParameter.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::IntegerAttribute,
    :schema_type => XSD::QName.new(NsV201003_0, "IntegerAttribute"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::IntegerSetAttribute,
    :schema_type => XSD::QName.new(NsV201003_0, "IntegerSetAttribute"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPInt[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::KeywordCategoryIdSearchParameter,
    :schema_type => XSD::QName.new(NsV201003_0, "KeywordCategoryIdSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "SearchParameter.Type")], [0, 1]],
      ["categoryId", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::KeywordMatchTypeSearchParameter,
    :schema_type => XSD::QName.new(NsV201003_0, "KeywordMatchTypeSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "SearchParameter.Type")], [0, 1]],
      ["keywordMatchTypes", "AdwordsApi::V201003::TargetingIdeaService::KeywordMatchType[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::LongAttribute,
    :schema_type => XSD::QName.new(NsV201003_0, "LongAttribute"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::LongComparisonOperation,
    :schema_type => XSD::QName.new(NsV201003_0, "LongComparisonOperation"),
    :schema_element => [
      ["minimum", "SOAP::SOAPLong", [0, 1]],
      ["maximum", "SOAP::SOAPLong", [0, 1]],
      ["excludes", "SOAP::SOAPLong[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::MobileSearchParameter,
    :schema_type => XSD::QName.new(NsV201003_0, "MobileSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "SearchParameter.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::MonthlySearchVolume,
    :schema_type => XSD::QName.new(NsV201003_0, "MonthlySearchVolume"),
    :schema_element => [
      ["year", "SOAP::SOAPInt", [0, 1]],
      ["month", "SOAP::SOAPInt", [0, 1]],
      ["count", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::MonthlySearchVolumeAttribute,
    :schema_type => XSD::QName.new(NsV201003_0, "MonthlySearchVolumeAttribute"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201003::TargetingIdeaService::MonthlySearchVolume[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::PlacementTypeAttribute,
    :schema_type => XSD::QName.new(NsV201003_0, "PlacementTypeAttribute"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201003::TargetingIdeaService::SiteConstantsPlacementType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::PlacementTypeSearchParameter,
    :schema_type => XSD::QName.new(NsV201003_0, "PlacementTypeSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "SearchParameter.Type")], [0, 1]],
      ["placementTypes", "AdwordsApi::V201003::TargetingIdeaService::SiteConstantsPlacementType[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::RelatedToUrlSearchParameter,
    :schema_type => XSD::QName.new(NsV201003_0, "RelatedToUrlSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "SearchParameter.Type")], [0, 1]],
      ["urls", "SOAP::SOAPString[]", [0, nil]],
      ["includeSubUrls", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::SearchShareSearchParameter,
    :schema_type => XSD::QName.new(NsV201003_0, "SearchShareSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "SearchParameter.Type")], [0, 1]],
      ["operation", "AdwordsApi::V201003::TargetingIdeaService::DoubleComparisonOperation", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::SeedAdGroupIdSearchParameter,
    :schema_type => XSD::QName.new(NsV201003_0, "SeedAdGroupIdSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "SearchParameter.Type")], [0, 1]],
      ["adGroupId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::StringAttribute,
    :schema_type => XSD::QName.new(NsV201003_0, "StringAttribute"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::TargetingIdeaError,
    :schema_type => XSD::QName.new(NsV201003_0, "TargetingIdeaError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "fieldPath")], [0, 1]],
      ["trigger", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "trigger")], [0, 1]],
      ["errorString", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "errorString")], [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::TargetingIdeaService::TargetingIdeaErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::WebpageDescriptor,
    :schema_type => XSD::QName.new(NsV201003_0, "WebpageDescriptor"),
    :schema_element => [
      ["url", "SOAP::SOAPString", [0, 1]],
      ["title", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::WebpageDescriptorAttribute,
    :schema_type => XSD::QName.new(NsV201003_0, "WebpageDescriptorAttribute"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201003::TargetingIdeaService::WebpageDescriptor", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::AdShareSearchParameter,
    :schema_type => XSD::QName.new(NsV201003_0, "AdShareSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "SearchParameter.Type")], [0, 1]],
      ["operation", "AdwordsApi::V201003::TargetingIdeaService::DoubleComparisonOperation", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::AverageTargetedMonthlySearchesSearchParameter,
    :schema_type => XSD::QName.new(NsV201003_0, "AverageTargetedMonthlySearchesSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "SearchParameter.Type")], [0, 1]],
      ["operation", "AdwordsApi::V201003::TargetingIdeaService::LongComparisonOperation", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::GlobalMonthlySearchesSearchParameter,
    :schema_type => XSD::QName.new(NsV201003_0, "GlobalMonthlySearchesSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "SearchParameter.Type")], [0, 1]],
      ["operation", "AdwordsApi::V201003::TargetingIdeaService::LongComparisonOperation", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::MoneyAttribute,
    :schema_type => XSD::QName.new(NsV201003_0, "MoneyAttribute"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201003::TargetingIdeaService::Money", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::C_Range,
    :schema_type => XSD::QName.new(NsV201003_0, "Range"),
    :schema_element => [
      ["min", "AdwordsApi::V201003::TargetingIdeaService::ComparableValue", [0, 1]],
      ["max", "AdwordsApi::V201003::TargetingIdeaService::ComparableValue", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::CountryTargetSearchParameter,
    :schema_type => XSD::QName.new(NsV201003_0, "CountryTargetSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "SearchParameter.Type")], [0, 1]],
      ["countryTargets", "AdwordsApi::V201003::TargetingIdeaService::CountryTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::LanguageTargetSearchParameter,
    :schema_type => XSD::QName.new(NsV201003_0, "LanguageTargetSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "SearchParameter.Type")], [0, 1]],
      ["languageTargets", "AdwordsApi::V201003::TargetingIdeaService::LanguageTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::LongRangeAttribute,
    :schema_type => XSD::QName.new(NsV201003_0, "LongRangeAttribute"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201003::TargetingIdeaService::C_Range", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::ExcludedKeywordSearchParameter,
    :schema_type => XSD::QName.new(NsV201003_0, "ExcludedKeywordSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "SearchParameter.Type")], [0, 1]],
      ["keywords", "AdwordsApi::V201003::TargetingIdeaService::Keyword[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::KeywordAttribute,
    :schema_type => XSD::QName.new(NsV201003_0, "KeywordAttribute"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201003::TargetingIdeaService::Keyword", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::PlacementAttribute,
    :schema_type => XSD::QName.new(NsV201003_0, "PlacementAttribute"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201003::TargetingIdeaService::Placement", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::RelatedToKeywordSearchParameter,
    :schema_type => XSD::QName.new(NsV201003_0, "RelatedToKeywordSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201003_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003_0, "SearchParameter.Type")], [0, 1]],
      ["keywords", "AdwordsApi::V201003::TargetingIdeaService::Keyword[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::TargetingIdeaSelector,
    :schema_type => XSD::QName.new(NsV201003_0, "TargetingIdeaSelector"),
    :schema_element => [
      ["searchParameters", "AdwordsApi::V201003::TargetingIdeaService::SearchParameter[]", [0, nil]],
      ["ideaType", "AdwordsApi::V201003::TargetingIdeaService::IdeaType", [0, 1]],
      ["requestType", "AdwordsApi::V201003::TargetingIdeaService::RequestType", [0, 1]],
      ["requestedAttributeTypes", "AdwordsApi::V201003::TargetingIdeaService::AttributeType[]", [0, nil]],
      ["paging", "AdwordsApi::V201003::TargetingIdeaService::Paging", [0, 1]],
      ["localeCode", "SOAP::SOAPString", [0, 1]],
      ["currencyCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::Type_AttributeMapEntry,
    :schema_type => XSD::QName.new(NsV201003_0, "Type_AttributeMapEntry"),
    :schema_element => [
      ["key", "AdwordsApi::V201003::TargetingIdeaService::AttributeType", [0, 1]],
      ["value", "AdwordsApi::V201003::TargetingIdeaService::Attribute", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::TargetingIdea,
    :schema_type => XSD::QName.new(NsV201003_0, "TargetingIdea"),
    :schema_element => [
      ["data", "AdwordsApi::V201003::TargetingIdeaService::Type_AttributeMapEntry[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::TargetingIdeaPage,
    :schema_type => XSD::QName.new(NsV201003_0, "TargetingIdeaPage"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["entries", "AdwordsApi::V201003::TargetingIdeaService::TargetingIdea[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::AdGroupCriterionErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupCriterionError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::AdGroupCriterionLimitExceededCriteriaLimitType,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupCriterionLimitExceeded.CriteriaLimitType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::AgeTargetAge,
    :schema_type => XSD::QName.new(NsV201003, "AgeTarget.Age")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AuthenticationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AuthorizationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "BiddingError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::BudgetErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "BudgetError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "ClientTermsError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "DatabaseError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "DateError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::DayOfWeek,
    :schema_type => XSD::QName.new(NsV201003, "DayOfWeek")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "DistinctError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::EntityCountLimitExceededReason,
    :schema_type => XSD::QName.new(NsV201003, "EntityCountLimitExceeded.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV201003, "EntityNotFound.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::GenderTargetGender,
    :schema_type => XSD::QName.new(NsV201003, "GenderTarget.Gender")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "InternalApiError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::KeywordMatchType,
    :schema_type => XSD::QName.new(NsV201003, "KeywordMatchType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::MinuteOfHour,
    :schema_type => XSD::QName.new(NsV201003, "MinuteOfHour")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::NetworkCoverageType,
    :schema_type => XSD::QName.new(NsV201003, "NetworkCoverageType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NotEmptyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NotWhitelistedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NullError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::PlatformType,
    :schema_type => XSD::QName.new(NsV201003, "PlatformType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::ProximityTargetDistanceUnits,
    :schema_type => XSD::QName.new(NsV201003, "ProximityTarget.DistanceUnits")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "QuotaCheckError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RangeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RateExceededError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "ReadOnlyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::RegionCodeErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RegionCodeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RequestError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RequiredError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "SizeLimitError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "StatsQueryError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::StringLengthErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "StringLengthError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::TargetErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "TargetError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::AttributeType,
    :schema_type => XSD::QName.new(NsV201003_0, "AttributeType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::CollectionSizeErrorReason,
    :schema_type => XSD::QName.new(NsV201003_0, "CollectionSizeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::CompetitionSearchParameterLevel,
    :schema_type => XSD::QName.new(NsV201003_0, "CompetitionSearchParameter.Level")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::IdeaType,
    :schema_type => XSD::QName.new(NsV201003_0, "IdeaType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::MatchAction,
    :schema_type => XSD::QName.new(NsV201003_0, "MatchAction")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::RequestType,
    :schema_type => XSD::QName.new(NsV201003_0, "RequestType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::SiteConstantsAdFormat,
    :schema_type => XSD::QName.new(NsV201003_0, "SiteConstants.AdFormat")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::SiteConstantsAdType,
    :schema_type => XSD::QName.new(NsV201003_0, "SiteConstants.AdType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::SiteConstantsPlacementType,
    :schema_type => XSD::QName.new(NsV201003_0, "SiteConstants.PlacementType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::TargetingIdeaErrorReason,
    :schema_type => XSD::QName.new(NsV201003_0, "TargetingIdeaError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::Get,
    :schema_name => XSD::QName.new(NsV201003_0, "get"),
    :schema_element => [
      ["selector", "AdwordsApi::V201003::TargetingIdeaService::TargetingIdeaSelector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::GetResponse,
    :schema_name => XSD::QName.new(NsV201003_0, "getResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V201003::TargetingIdeaService::TargetingIdeaPage", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::ApiException,
    :schema_name => XSD::QName.new(NsV201003_0, "ApiExceptionFault"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201003::TargetingIdeaService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::GetBulkKeywordIdeas,
    :schema_name => XSD::QName.new(NsV201003_0, "getBulkKeywordIdeas"),
    :schema_element => [
      ["selector", "AdwordsApi::V201003::TargetingIdeaService::TargetingIdeaSelector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::GetBulkKeywordIdeasResponse,
    :schema_name => XSD::QName.new(NsV201003_0, "getBulkKeywordIdeasResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V201003::TargetingIdeaService::TargetingIdeaPage", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::SoapHeader,
    :schema_name => XSD::QName.new(NsV201003_0, "RequestHeader"),
    :schema_element => [
      ["authToken", "SOAP::SOAPString", [0, 1]],
      ["clientCustomerId", "SOAP::SOAPString", [0, 1]],
      ["clientEmail", "SOAP::SOAPString", [0, 1]],
      ["developerToken", "SOAP::SOAPString", [0, 1]],
      ["userAgent", "SOAP::SOAPString", [0, 1]],
      ["validateOnly", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::TargetingIdeaService::SoapResponseHeader,
    :schema_name => XSD::QName.new(NsV201003_0, "ResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )
end

end; end; end
