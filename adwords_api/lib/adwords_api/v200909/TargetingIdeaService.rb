require 'xsd/qname'

module AdwordsApi; module V200909; module TargetingIdeaService


# Address
# - streetAddress - SOAP::SOAPString
# - streetAddress2 - SOAP::SOAPString
# - cityName - SOAP::SOAPString
# - provinceCode - SOAP::SOAPString
# - provinceName - SOAP::SOAPString
# - postalCode - SOAP::SOAPString
# - countryCode - SOAP::SOAPString
class Address
  attr_accessor :streetAddress
  attr_accessor :streetAddress2
  attr_accessor :cityName
  attr_accessor :provinceCode
  attr_accessor :provinceName
  attr_accessor :postalCode
  attr_accessor :countryCode

  def initialize(streetAddress = nil, streetAddress2 = nil, cityName = nil, provinceCode = nil, provinceName = nil, postalCode = nil, countryCode = nil)
    @streetAddress = streetAddress
    @streetAddress2 = streetAddress2
    @cityName = cityName
    @provinceCode = provinceCode
    @provinceName = provinceName
    @postalCode = postalCode
    @countryCode = countryCode
  end
end

# GeoPoint
# - latitudeInMicroDegrees - SOAP::SOAPInt
# - longitudeInMicroDegrees - SOAP::SOAPInt
class GeoPoint
  attr_accessor :latitudeInMicroDegrees
  attr_accessor :longitudeInMicroDegrees

  def initialize(latitudeInMicroDegrees = nil, longitudeInMicroDegrees = nil)
    @latitudeInMicroDegrees = latitudeInMicroDegrees
    @longitudeInMicroDegrees = longitudeInMicroDegrees
  end
end

# Paging
# - startIndex - SOAP::SOAPInt
# - numberResults - SOAP::SOAPInt
class Paging
  attr_accessor :startIndex
  attr_accessor :numberResults

  def initialize(startIndex = nil, numberResults = nil)
    @startIndex = startIndex
    @numberResults = numberResults
  end
end

# PolicyViolationError.Part
# - index - SOAP::SOAPInt
# - length - SOAP::SOAPInt
class PolicyViolationErrorPart
  attr_accessor :index
  attr_accessor :length

  def initialize(index = nil, length = nil)
    @index = index
    @length = length
  end
end

# PolicyViolationKey
# - policyName - SOAP::SOAPString
# - violatingText - SOAP::SOAPString
class PolicyViolationKey
  attr_accessor :policyName
  attr_accessor :violatingText

  def initialize(policyName = nil, violatingText = nil)
    @policyName = policyName
    @violatingText = violatingText
  end
end

# SoapHeader
# - applicationToken - SOAP::SOAPString
# - authToken - SOAP::SOAPString
# - clientCustomerId - SOAP::SOAPString
# - clientEmail - SOAP::SOAPString
# - developerToken - SOAP::SOAPString
# - userAgent - SOAP::SOAPString
# - validateOnly - SOAP::SOAPBoolean
class SoapHeader
  attr_accessor :applicationToken
  attr_accessor :authToken
  attr_accessor :clientCustomerId
  attr_accessor :clientEmail
  attr_accessor :developerToken
  attr_accessor :userAgent
  attr_accessor :validateOnly

  def initialize(applicationToken = nil, authToken = nil, clientCustomerId = nil, clientEmail = nil, developerToken = nil, userAgent = nil, validateOnly = nil)
    @applicationToken = applicationToken
    @authToken = authToken
    @clientCustomerId = clientCustomerId
    @clientEmail = clientEmail
    @developerToken = developerToken
    @userAgent = userAgent
    @validateOnly = validateOnly
  end
end

# SoapResponseHeader
# - requestId - SOAP::SOAPString
# - operations - SOAP::SOAPLong
# - responseTime - SOAP::SOAPLong
# - units - SOAP::SOAPLong
class SoapResponseHeader
  attr_accessor :requestId
  attr_accessor :operations
  attr_accessor :responseTime
  attr_accessor :units

  def initialize(requestId = nil, operations = nil, responseTime = nil, units = nil)
    @requestId = requestId
    @operations = operations
    @responseTime = responseTime
    @units = units
  end
end

# ComparableValue
# abstract
# - comparableValue_Type - SOAP::SOAPString
class ComparableValue
  attr_accessor :comparableValue_Type

  def initialize(comparableValue_Type = nil)
    @comparableValue_Type = comparableValue_Type
  end
end

# Money
# - comparableValue_Type - SOAP::SOAPString
# - microAmount - SOAP::SOAPLong
class Money < ComparableValue
  attr_accessor :comparableValue_Type
  attr_accessor :microAmount

  def initialize(comparableValue_Type = nil, microAmount = nil)
    @comparableValue_Type = comparableValue_Type
    @microAmount = microAmount
  end
end

# NumberValue
# abstract
# - comparableValue_Type - SOAP::SOAPString
class NumberValue < ComparableValue
  attr_accessor :comparableValue_Type

  def initialize(comparableValue_Type = nil)
    @comparableValue_Type = comparableValue_Type
  end
end

# DoubleValue
# - comparableValue_Type - SOAP::SOAPString
# - number - SOAP::SOAPDouble
class DoubleValue < NumberValue
  attr_accessor :comparableValue_Type
  attr_accessor :number

  def initialize(comparableValue_Type = nil, number = nil)
    @comparableValue_Type = comparableValue_Type
    @number = number
  end
end

# LongValue
# - comparableValue_Type - SOAP::SOAPString
# - number - SOAP::SOAPLong
class LongValue < NumberValue
  attr_accessor :comparableValue_Type
  attr_accessor :number

  def initialize(comparableValue_Type = nil, number = nil)
    @comparableValue_Type = comparableValue_Type
    @number = number
  end
end

# Target
# abstract
# - target_Type - SOAP::SOAPString
class Target
  attr_accessor :target_Type

  def initialize(target_Type = nil)
    @target_Type = target_Type
  end
end

# AdScheduleTarget
# - target_Type - SOAP::SOAPString
# - dayOfWeek - AdwordsApi::V200909::TargetingIdeaService::DayOfWeek
# - startHour - SOAP::SOAPInt
# - startMinute - AdwordsApi::V200909::TargetingIdeaService::MinuteOfHour
# - endHour - SOAP::SOAPInt
# - endMinute - AdwordsApi::V200909::TargetingIdeaService::MinuteOfHour
# - bidMultiplier - SOAP::SOAPDouble
class AdScheduleTarget < Target
  attr_accessor :target_Type
  attr_accessor :dayOfWeek
  attr_accessor :startHour
  attr_accessor :startMinute
  attr_accessor :endHour
  attr_accessor :endMinute
  attr_accessor :bidMultiplier

  def initialize(target_Type = nil, dayOfWeek = nil, startHour = nil, startMinute = nil, endHour = nil, endMinute = nil, bidMultiplier = nil)
    @target_Type = target_Type
    @dayOfWeek = dayOfWeek
    @startHour = startHour
    @startMinute = startMinute
    @endHour = endHour
    @endMinute = endMinute
    @bidMultiplier = bidMultiplier
  end
end

# LanguageTarget
# - target_Type - SOAP::SOAPString
# - languageCode - SOAP::SOAPString
class LanguageTarget < Target
  attr_accessor :target_Type
  attr_accessor :languageCode

  def initialize(target_Type = nil, languageCode = nil)
    @target_Type = target_Type
    @languageCode = languageCode
  end
end

# NetworkTarget
# - target_Type - SOAP::SOAPString
# - networkCoverageType - AdwordsApi::V200909::TargetingIdeaService::NetworkCoverageType
class NetworkTarget < Target
  attr_accessor :target_Type
  attr_accessor :networkCoverageType

  def initialize(target_Type = nil, networkCoverageType = nil)
    @target_Type = target_Type
    @networkCoverageType = networkCoverageType
  end
end

# PlatformTarget
# - target_Type - SOAP::SOAPString
# - platformType - AdwordsApi::V200909::TargetingIdeaService::PlatformType
class PlatformTarget < Target
  attr_accessor :target_Type
  attr_accessor :platformType

  def initialize(target_Type = nil, platformType = nil)
    @target_Type = target_Type
    @platformType = platformType
  end
end

# DemographicTarget
# abstract
# - target_Type - SOAP::SOAPString
# - bidModifier - SOAP::SOAPInt
class DemographicTarget < Target
  attr_accessor :target_Type
  attr_accessor :bidModifier

  def initialize(target_Type = nil, bidModifier = nil)
    @target_Type = target_Type
    @bidModifier = bidModifier
  end
end

# AgeTarget
# - target_Type - SOAP::SOAPString
# - bidModifier - SOAP::SOAPInt
# - age - AdwordsApi::V200909::TargetingIdeaService::AgeTargetAge
class AgeTarget < DemographicTarget
  attr_accessor :target_Type
  attr_accessor :bidModifier
  attr_accessor :age

  def initialize(target_Type = nil, bidModifier = nil, age = nil)
    @target_Type = target_Type
    @bidModifier = bidModifier
    @age = age
  end
end

# GenderTarget
# - target_Type - SOAP::SOAPString
# - bidModifier - SOAP::SOAPInt
# - gender - AdwordsApi::V200909::TargetingIdeaService::GenderTargetGender
class GenderTarget < DemographicTarget
  attr_accessor :target_Type
  attr_accessor :bidModifier
  attr_accessor :gender

  def initialize(target_Type = nil, bidModifier = nil, gender = nil)
    @target_Type = target_Type
    @bidModifier = bidModifier
    @gender = gender
  end
end

# GeoTarget
# abstract
# - target_Type - SOAP::SOAPString
# - excluded - SOAP::SOAPBoolean
class GeoTarget < Target
  attr_accessor :target_Type
  attr_accessor :excluded

  def initialize(target_Type = nil, excluded = nil)
    @target_Type = target_Type
    @excluded = excluded
  end
end

# CityTarget
# - target_Type - SOAP::SOAPString
# - excluded - SOAP::SOAPBoolean
# - cityName - SOAP::SOAPString
# - provinceCode - SOAP::SOAPString
# - countryCode - SOAP::SOAPString
class CityTarget < GeoTarget
  attr_accessor :target_Type
  attr_accessor :excluded
  attr_accessor :cityName
  attr_accessor :provinceCode
  attr_accessor :countryCode

  def initialize(target_Type = nil, excluded = nil, cityName = nil, provinceCode = nil, countryCode = nil)
    @target_Type = target_Type
    @excluded = excluded
    @cityName = cityName
    @provinceCode = provinceCode
    @countryCode = countryCode
  end
end

# CountryTarget
# - target_Type - SOAP::SOAPString
# - excluded - SOAP::SOAPBoolean
# - countryCode - SOAP::SOAPString
class CountryTarget < GeoTarget
  attr_accessor :target_Type
  attr_accessor :excluded
  attr_accessor :countryCode

  def initialize(target_Type = nil, excluded = nil, countryCode = nil)
    @target_Type = target_Type
    @excluded = excluded
    @countryCode = countryCode
  end
end

# MetroTarget
# - target_Type - SOAP::SOAPString
# - excluded - SOAP::SOAPBoolean
# - metroCode - SOAP::SOAPString
class MetroTarget < GeoTarget
  attr_accessor :target_Type
  attr_accessor :excluded
  attr_accessor :metroCode

  def initialize(target_Type = nil, excluded = nil, metroCode = nil)
    @target_Type = target_Type
    @excluded = excluded
    @metroCode = metroCode
  end
end

# PolygonTarget
# - target_Type - SOAP::SOAPString
# - excluded - SOAP::SOAPBoolean
# - vertices - AdwordsApi::V200909::TargetingIdeaService::GeoPoint
class PolygonTarget < GeoTarget
  attr_accessor :target_Type
  attr_accessor :excluded
  attr_accessor :vertices

  def initialize(target_Type = nil, excluded = nil, vertices = [])
    @target_Type = target_Type
    @excluded = excluded
    @vertices = vertices
  end
end

# ProvinceTarget
# - target_Type - SOAP::SOAPString
# - excluded - SOAP::SOAPBoolean
# - provinceCode - SOAP::SOAPString
class ProvinceTarget < GeoTarget
  attr_accessor :target_Type
  attr_accessor :excluded
  attr_accessor :provinceCode

  def initialize(target_Type = nil, excluded = nil, provinceCode = nil)
    @target_Type = target_Type
    @excluded = excluded
    @provinceCode = provinceCode
  end
end

# ProximityTarget
# - target_Type - SOAP::SOAPString
# - excluded - SOAP::SOAPBoolean
# - geoPoint - AdwordsApi::V200909::TargetingIdeaService::GeoPoint
# - radiusDistanceUnits - AdwordsApi::V200909::TargetingIdeaService::ProximityTargetDistanceUnits
# - radiusInUnits - SOAP::SOAPDouble
# - address - AdwordsApi::V200909::TargetingIdeaService::Address
# - allowServiceOfAddress - SOAP::SOAPBoolean
class ProximityTarget < GeoTarget
  attr_accessor :target_Type
  attr_accessor :excluded
  attr_accessor :geoPoint
  attr_accessor :radiusDistanceUnits
  attr_accessor :radiusInUnits
  attr_accessor :address
  attr_accessor :allowServiceOfAddress

  def initialize(target_Type = nil, excluded = nil, geoPoint = nil, radiusDistanceUnits = nil, radiusInUnits = nil, address = nil, allowServiceOfAddress = nil)
    @target_Type = target_Type
    @excluded = excluded
    @geoPoint = geoPoint
    @radiusDistanceUnits = radiusDistanceUnits
    @radiusInUnits = radiusInUnits
    @address = address
    @allowServiceOfAddress = allowServiceOfAddress
  end
end

# ApiError
# abstract
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
class ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
  end
end

# AdGroupCriterionError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V200909::TargetingIdeaService::AdGroupCriterionErrorReason
class AdGroupCriterionError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# AuthenticationError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V200909::TargetingIdeaService::AuthenticationErrorReason
class AuthenticationError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# AuthorizationError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V200909::TargetingIdeaService::AuthorizationErrorReason
class AuthorizationError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# BiddingError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V200909::TargetingIdeaService::BiddingErrorReason
class BiddingError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# BudgetError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V200909::TargetingIdeaService::BudgetErrorReason
class BudgetError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# ClientTermsError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V200909::TargetingIdeaService::ClientTermsErrorReason
class ClientTermsError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# DateError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V200909::TargetingIdeaService::DateErrorReason
class DateError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# DistinctError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V200909::TargetingIdeaService::DistinctErrorReason
class DistinctError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# EntityCountLimitExceeded
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V200909::TargetingIdeaService::EntityCountLimitExceededReason
# - enclosingId - SOAP::SOAPString
# - limit - SOAP::SOAPInt
class EntityCountLimitExceeded < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason
  attr_accessor :enclosingId
  attr_accessor :limit

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil, enclosingId = nil, limit = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
    @enclosingId = enclosingId
    @limit = limit
  end
end

# AdGroupCriterionLimitExceeded
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V200909::TargetingIdeaService::EntityCountLimitExceededReason
# - enclosingId - SOAP::SOAPString
# - limit - SOAP::SOAPInt
# - limitType - AdwordsApi::V200909::TargetingIdeaService::AdGroupCriterionLimitExceededCriteriaLimitType
class AdGroupCriterionLimitExceeded < EntityCountLimitExceeded
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason
  attr_accessor :enclosingId
  attr_accessor :limit
  attr_accessor :limitType

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil, enclosingId = nil, limit = nil, limitType = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
    @enclosingId = enclosingId
    @limit = limit
    @limitType = limitType
  end
end

# EntityNotFound
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V200909::TargetingIdeaService::EntityNotFoundReason
class EntityNotFound < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# InternalApiError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V200909::TargetingIdeaService::InternalApiErrorReason
class InternalApiError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# NotEmptyError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V200909::TargetingIdeaService::NotEmptyErrorReason
class NotEmptyError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# NotWhitelistedError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V200909::TargetingIdeaService::NotWhitelistedErrorReason
class NotWhitelistedError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# NullError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V200909::TargetingIdeaService::NullErrorReason
class NullError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# QuotaCheckError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V200909::TargetingIdeaService::QuotaCheckErrorReason
class QuotaCheckError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# QuotaExceededError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V200909::TargetingIdeaService::QuotaExceededErrorReason
class QuotaExceededError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# RangeError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V200909::TargetingIdeaService::RangeErrorReason
class C_RangeError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# ReadOnlyError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V200909::TargetingIdeaService::ReadOnlyErrorReason
class ReadOnlyError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# RegionCodeError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V200909::TargetingIdeaService::RegionCodeErrorReason
class RegionCodeError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# RequiredError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V200909::TargetingIdeaService::RequiredErrorReason
class RequiredError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# SizeLimitError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V200909::TargetingIdeaService::SizeLimitErrorReason
class SizeLimitError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# StatsQueryError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V200909::TargetingIdeaService::StatsQueryErrorReason
class StatsQueryError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# StringLengthError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V200909::TargetingIdeaService::StringLengthErrorReason
class StringLengthError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# TargetError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V200909::TargetingIdeaService::TargetErrorReason
class TargetError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# DatabaseError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V200909::TargetingIdeaService::DatabaseErrorReason
class DatabaseError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# PolicyViolationError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - key - AdwordsApi::V200909::TargetingIdeaService::PolicyViolationKey
# - externalPolicyName - SOAP::SOAPString
# - externalPolicyUrl - SOAP::SOAPString
# - externalPolicyDescription - SOAP::SOAPString
# - isExemptable - SOAP::SOAPBoolean
# - violatingParts - AdwordsApi::V200909::TargetingIdeaService::PolicyViolationErrorPart
class PolicyViolationError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :key
  attr_accessor :externalPolicyName
  attr_accessor :externalPolicyUrl
  attr_accessor :externalPolicyDescription
  attr_accessor :isExemptable
  attr_accessor :violatingParts

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, key = nil, externalPolicyName = nil, externalPolicyUrl = nil, externalPolicyDescription = nil, isExemptable = nil, violatingParts = [])
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @key = key
    @externalPolicyName = externalPolicyName
    @externalPolicyUrl = externalPolicyUrl
    @externalPolicyDescription = externalPolicyDescription
    @isExemptable = isExemptable
    @violatingParts = violatingParts
  end
end

# CriterionPolicyError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - key - AdwordsApi::V200909::TargetingIdeaService::PolicyViolationKey
# - externalPolicyName - SOAP::SOAPString
# - externalPolicyUrl - SOAP::SOAPString
# - externalPolicyDescription - SOAP::SOAPString
# - isExemptable - SOAP::SOAPBoolean
# - violatingParts - AdwordsApi::V200909::TargetingIdeaService::PolicyViolationErrorPart
class CriterionPolicyError < PolicyViolationError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :key
  attr_accessor :externalPolicyName
  attr_accessor :externalPolicyUrl
  attr_accessor :externalPolicyDescription
  attr_accessor :isExemptable
  attr_accessor :violatingParts

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, key = nil, externalPolicyName = nil, externalPolicyUrl = nil, externalPolicyDescription = nil, isExemptable = nil, violatingParts = [])
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @key = key
    @externalPolicyName = externalPolicyName
    @externalPolicyUrl = externalPolicyUrl
    @externalPolicyDescription = externalPolicyDescription
    @isExemptable = isExemptable
    @violatingParts = violatingParts
  end
end

# CollectionSizeError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V200909::TargetingIdeaService::CollectionSizeErrorReason
class CollectionSizeError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# TargetingIdeaError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V200909::TargetingIdeaService::TargetingIdeaErrorReason
class TargetingIdeaError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# ApplicationException
# - message - SOAP::SOAPString
# - applicationException_Type - SOAP::SOAPString
class ApplicationException
  attr_accessor :message
  attr_accessor :applicationException_Type

  def initialize(message = nil, applicationException_Type = nil)
    @message = message
    @applicationException_Type = applicationException_Type
  end
end

# ApiException
# - message - SOAP::SOAPString
# - applicationException_Type - SOAP::SOAPString
# - errors - AdwordsApi::V200909::TargetingIdeaService::ApiError
class ApiException < ApplicationException
  attr_accessor :message
  attr_accessor :applicationException_Type
  attr_accessor :errors

  def initialize(message = nil, applicationException_Type = nil, errors = [])
    @message = message
    @applicationException_Type = applicationException_Type
    @errors = errors
  end
end

# Criterion
# - id - SOAP::SOAPLong
# - criterion_Type - SOAP::SOAPString
class Criterion
  attr_accessor :id
  attr_accessor :criterion_Type

  def initialize(id = nil, criterion_Type = nil)
    @id = id
    @criterion_Type = criterion_Type
  end
end

# Keyword
# - id - SOAP::SOAPLong
# - criterion_Type - SOAP::SOAPString
# - text - SOAP::SOAPString
# - matchType - AdwordsApi::V200909::TargetingIdeaService::KeywordMatchType
class Keyword < Criterion
  attr_accessor :id
  attr_accessor :criterion_Type
  attr_accessor :text
  attr_accessor :matchType

  def initialize(id = nil, criterion_Type = nil, text = nil, matchType = nil)
    @id = id
    @criterion_Type = criterion_Type
    @text = text
    @matchType = matchType
  end
end

# Placement
# - id - SOAP::SOAPLong
# - criterion_Type - SOAP::SOAPString
# - url - SOAP::SOAPString
class Placement < Criterion
  attr_accessor :id
  attr_accessor :criterion_Type
  attr_accessor :url

  def initialize(id = nil, criterion_Type = nil, url = nil)
    @id = id
    @criterion_Type = criterion_Type
    @url = url
  end
end

# AdFormatSpec
# - format - AdwordsApi::V200909::TargetingIdeaService::SiteConstantsAdFormat
class AdFormatSpec
  attr_accessor :format

  def initialize(format = nil)
    @format = format
  end
end

# InStreamAdInfo
# - maxAdDuration - SOAP::SOAPInt
# - minAdDuration - SOAP::SOAPInt
# - medianAdDuration - SOAP::SOAPInt
# - preRollPercent - SOAP::SOAPDouble
# - midRollPercent - SOAP::SOAPDouble
# - postRollPercent - SOAP::SOAPDouble
class InStreamAdInfo
  attr_accessor :maxAdDuration
  attr_accessor :minAdDuration
  attr_accessor :medianAdDuration
  attr_accessor :preRollPercent
  attr_accessor :midRollPercent
  attr_accessor :postRollPercent

  def initialize(maxAdDuration = nil, minAdDuration = nil, medianAdDuration = nil, preRollPercent = nil, midRollPercent = nil, postRollPercent = nil)
    @maxAdDuration = maxAdDuration
    @minAdDuration = minAdDuration
    @medianAdDuration = medianAdDuration
    @preRollPercent = preRollPercent
    @midRollPercent = midRollPercent
    @postRollPercent = postRollPercent
  end
end

# LongComparisonOperation
# - minimum - SOAP::SOAPLong
# - maximum - SOAP::SOAPLong
# - excludes - SOAP::SOAPLong
class LongComparisonOperation
  attr_accessor :minimum
  attr_accessor :maximum
  attr_accessor :excludes

  def initialize(minimum = nil, maximum = nil, excludes = [])
    @minimum = minimum
    @maximum = maximum
    @excludes = excludes
  end
end

# MonthlySearchVolume
# - year - SOAP::SOAPInt
# - month - SOAP::SOAPInt
# - count - SOAP::SOAPLong
class MonthlySearchVolume
  attr_accessor :year
  attr_accessor :month
  attr_accessor :count

  def initialize(year = nil, month = nil, count = nil)
    @year = year
    @month = month
    @count = count
  end
end

# WebpageDescriptor
# - url - SOAP::SOAPString
# - title - SOAP::SOAPString
class WebpageDescriptor
  attr_accessor :url
  attr_accessor :title

  def initialize(url = nil, title = nil)
    @url = url
    @title = title
  end
end

# Range
# - min - AdwordsApi::V200909::TargetingIdeaService::ComparableValue
# - max - AdwordsApi::V200909::TargetingIdeaService::ComparableValue
class C_Range
  attr_accessor :min
  attr_accessor :max

  def initialize(min = nil, max = nil)
    @min = min
    @max = max
  end
end

# SearchParameter
# abstract
# - searchParameter_Type - SOAP::SOAPString
class SearchParameter
  attr_accessor :searchParameter_Type

  def initialize(searchParameter_Type = nil)
    @searchParameter_Type = searchParameter_Type
  end
end

# AdTypeSearchParameter
# - searchParameter_Type - SOAP::SOAPString
# - adTypes - AdwordsApi::V200909::TargetingIdeaService::SiteConstantsAdType
class AdTypeSearchParameter < SearchParameter
  attr_accessor :searchParameter_Type
  attr_accessor :adTypes

  def initialize(searchParameter_Type = nil, adTypes = [])
    @searchParameter_Type = searchParameter_Type
    @adTypes = adTypes
  end
end

# CompetitionSearchParameter
# - searchParameter_Type - SOAP::SOAPString
# - levels - AdwordsApi::V200909::TargetingIdeaService::CompetitionSearchParameterLevel
class CompetitionSearchParameter < SearchParameter
  attr_accessor :searchParameter_Type
  attr_accessor :levels

  def initialize(searchParameter_Type = nil, levels = [])
    @searchParameter_Type = searchParameter_Type
    @levels = levels
  end
end

# IncludeAdultContentSearchParameter
# - searchParameter_Type - SOAP::SOAPString
class IncludeAdultContentSearchParameter < SearchParameter
  attr_accessor :searchParameter_Type

  def initialize(searchParameter_Type = nil)
    @searchParameter_Type = searchParameter_Type
  end
end

# KeywordCategoryIdSearchParameter
# - searchParameter_Type - SOAP::SOAPString
# - categoryId - SOAP::SOAPInt
class KeywordCategoryIdSearchParameter < SearchParameter
  attr_accessor :searchParameter_Type
  attr_accessor :categoryId

  def initialize(searchParameter_Type = nil, categoryId = nil)
    @searchParameter_Type = searchParameter_Type
    @categoryId = categoryId
  end
end

# KeywordMatchTypeSearchParameter
# - searchParameter_Type - SOAP::SOAPString
# - keywordMatchTypes - AdwordsApi::V200909::TargetingIdeaService::KeywordMatchType
class KeywordMatchTypeSearchParameter < SearchParameter
  attr_accessor :searchParameter_Type
  attr_accessor :keywordMatchTypes

  def initialize(searchParameter_Type = nil, keywordMatchTypes = [])
    @searchParameter_Type = searchParameter_Type
    @keywordMatchTypes = keywordMatchTypes
  end
end

# MobileSearchParameter
# - searchParameter_Type - SOAP::SOAPString
class MobileSearchParameter < SearchParameter
  attr_accessor :searchParameter_Type

  def initialize(searchParameter_Type = nil)
    @searchParameter_Type = searchParameter_Type
  end
end

# NgramGroupsSearchParameter
# - searchParameter_Type - SOAP::SOAPString
# - ngramGroups - SOAP::SOAPString
class NgramGroupsSearchParameter < SearchParameter
  attr_accessor :searchParameter_Type
  attr_accessor :ngramGroups

  def initialize(searchParameter_Type = nil, ngramGroups = [])
    @searchParameter_Type = searchParameter_Type
    @ngramGroups = ngramGroups
  end
end

# PlacementTypeSearchParameter
# - searchParameter_Type - SOAP::SOAPString
# - placementTypes - AdwordsApi::V200909::TargetingIdeaService::SiteConstantsPlacementType
class PlacementTypeSearchParameter < SearchParameter
  attr_accessor :searchParameter_Type
  attr_accessor :placementTypes

  def initialize(searchParameter_Type = nil, placementTypes = [])
    @searchParameter_Type = searchParameter_Type
    @placementTypes = placementTypes
  end
end

# RelatedToUrlSearchParameter
# - searchParameter_Type - SOAP::SOAPString
# - urls - SOAP::SOAPString
# - includeSubUrls - SOAP::SOAPBoolean
class RelatedToUrlSearchParameter < SearchParameter
  attr_accessor :searchParameter_Type
  attr_accessor :urls
  attr_accessor :includeSubUrls

  def initialize(searchParameter_Type = nil, urls = [], includeSubUrls = nil)
    @searchParameter_Type = searchParameter_Type
    @urls = urls
    @includeSubUrls = includeSubUrls
  end
end

# SeedAdGroupIdSearchParameter
# - searchParameter_Type - SOAP::SOAPString
# - adGroupId - SOAP::SOAPLong
class SeedAdGroupIdSearchParameter < SearchParameter
  attr_accessor :searchParameter_Type
  attr_accessor :adGroupId

  def initialize(searchParameter_Type = nil, adGroupId = nil)
    @searchParameter_Type = searchParameter_Type
    @adGroupId = adGroupId
  end
end

# AverageTargetedMonthlySearchesSearchParameter
# - searchParameter_Type - SOAP::SOAPString
# - operation - AdwordsApi::V200909::TargetingIdeaService::LongComparisonOperation
class AverageTargetedMonthlySearchesSearchParameter < SearchParameter
  attr_accessor :searchParameter_Type
  attr_accessor :operation

  def initialize(searchParameter_Type = nil, operation = nil)
    @searchParameter_Type = searchParameter_Type
    @operation = operation
  end
end

# GlobalMonthlySearchesSearchParameter
# - searchParameter_Type - SOAP::SOAPString
# - operation - AdwordsApi::V200909::TargetingIdeaService::LongComparisonOperation
class GlobalMonthlySearchesSearchParameter < SearchParameter
  attr_accessor :searchParameter_Type
  attr_accessor :operation

  def initialize(searchParameter_Type = nil, operation = nil)
    @searchParameter_Type = searchParameter_Type
    @operation = operation
  end
end

# CountryTargetSearchParameter
# - searchParameter_Type - SOAP::SOAPString
# - countryTargets - AdwordsApi::V200909::TargetingIdeaService::CountryTarget
class CountryTargetSearchParameter < SearchParameter
  attr_accessor :searchParameter_Type
  attr_accessor :countryTargets

  def initialize(searchParameter_Type = nil, countryTargets = [])
    @searchParameter_Type = searchParameter_Type
    @countryTargets = countryTargets
  end
end

# LanguageTargetSearchParameter
# - searchParameter_Type - SOAP::SOAPString
# - languageTargets - AdwordsApi::V200909::TargetingIdeaService::LanguageTarget
class LanguageTargetSearchParameter < SearchParameter
  attr_accessor :searchParameter_Type
  attr_accessor :languageTargets

  def initialize(searchParameter_Type = nil, languageTargets = [])
    @searchParameter_Type = searchParameter_Type
    @languageTargets = languageTargets
  end
end

# ExcludedKeywordSearchParameter
# - searchParameter_Type - SOAP::SOAPString
# - keywords - AdwordsApi::V200909::TargetingIdeaService::Keyword
class ExcludedKeywordSearchParameter < SearchParameter
  attr_accessor :searchParameter_Type
  attr_accessor :keywords

  def initialize(searchParameter_Type = nil, keywords = [])
    @searchParameter_Type = searchParameter_Type
    @keywords = keywords
  end
end

# RelatedToKeywordSearchParameter
# - searchParameter_Type - SOAP::SOAPString
# - keywords - AdwordsApi::V200909::TargetingIdeaService::Keyword
class RelatedToKeywordSearchParameter < SearchParameter
  attr_accessor :searchParameter_Type
  attr_accessor :keywords

  def initialize(searchParameter_Type = nil, keywords = [])
    @searchParameter_Type = searchParameter_Type
    @keywords = keywords
  end
end

# TargetingIdeaSelector
# - searchParameters - AdwordsApi::V200909::TargetingIdeaService::SearchParameter
# - ideaType - AdwordsApi::V200909::TargetingIdeaService::IdeaType
# - requestType - AdwordsApi::V200909::TargetingIdeaService::RequestType
# - requestedAttributeTypes - AdwordsApi::V200909::TargetingIdeaService::AttributeType
# - paging - AdwordsApi::V200909::TargetingIdeaService::Paging
# - localeCode - SOAP::SOAPString
# - currencyCode - SOAP::SOAPString
class TargetingIdeaSelector
  attr_accessor :searchParameters
  attr_accessor :ideaType
  attr_accessor :requestType
  attr_accessor :requestedAttributeTypes
  attr_accessor :paging
  attr_accessor :localeCode
  attr_accessor :currencyCode

  def initialize(searchParameters = [], ideaType = nil, requestType = nil, requestedAttributeTypes = [], paging = nil, localeCode = nil, currencyCode = nil)
    @searchParameters = searchParameters
    @ideaType = ideaType
    @requestType = requestType
    @requestedAttributeTypes = requestedAttributeTypes
    @paging = paging
    @localeCode = localeCode
    @currencyCode = currencyCode
  end
end

# Attribute
# abstract
# - attribute_Type - SOAP::SOAPString
class Attribute
  attr_accessor :attribute_Type

  def initialize(attribute_Type = nil)
    @attribute_Type = attribute_Type
  end
end

# AdFormatSpecListAttribute
# - attribute_Type - SOAP::SOAPString
# - value - AdwordsApi::V200909::TargetingIdeaService::AdFormatSpec
class AdFormatSpecListAttribute < Attribute
  attr_accessor :attribute_Type
  attr_accessor :value

  def initialize(attribute_Type = nil, value = [])
    @attribute_Type = attribute_Type
    @value = value
  end
end

# BooleanAttribute
# - attribute_Type - SOAP::SOAPString
# - value - SOAP::SOAPBoolean
class BooleanAttribute < Attribute
  attr_accessor :attribute_Type
  attr_accessor :value

  def initialize(attribute_Type = nil, value = nil)
    @attribute_Type = attribute_Type
    @value = value
  end
end

# DoubleAttribute
# - attribute_Type - SOAP::SOAPString
# - value - SOAP::SOAPDouble
class DoubleAttribute < Attribute
  attr_accessor :attribute_Type
  attr_accessor :value

  def initialize(attribute_Type = nil, value = nil)
    @attribute_Type = attribute_Type
    @value = value
  end
end

# IdeaTypeAttribute
# - attribute_Type - SOAP::SOAPString
# - value - AdwordsApi::V200909::TargetingIdeaService::IdeaType
class IdeaTypeAttribute < Attribute
  attr_accessor :attribute_Type
  attr_accessor :value

  def initialize(attribute_Type = nil, value = nil)
    @attribute_Type = attribute_Type
    @value = value
  end
end

# InStreamAdInfoAttribute
# - attribute_Type - SOAP::SOAPString
# - value - AdwordsApi::V200909::TargetingIdeaService::InStreamAdInfo
class InStreamAdInfoAttribute < Attribute
  attr_accessor :attribute_Type
  attr_accessor :value

  def initialize(attribute_Type = nil, value = nil)
    @attribute_Type = attribute_Type
    @value = value
  end
end

# IntegerAttribute
# - attribute_Type - SOAP::SOAPString
# - value - SOAP::SOAPInt
class IntegerAttribute < Attribute
  attr_accessor :attribute_Type
  attr_accessor :value

  def initialize(attribute_Type = nil, value = nil)
    @attribute_Type = attribute_Type
    @value = value
  end
end

# IntegerSetAttribute
# - attribute_Type - SOAP::SOAPString
# - value - SOAP::SOAPInt
class IntegerSetAttribute < Attribute
  attr_accessor :attribute_Type
  attr_accessor :value

  def initialize(attribute_Type = nil, value = [])
    @attribute_Type = attribute_Type
    @value = value
  end
end

# LongAttribute
# - attribute_Type - SOAP::SOAPString
# - value - SOAP::SOAPLong
class LongAttribute < Attribute
  attr_accessor :attribute_Type
  attr_accessor :value

  def initialize(attribute_Type = nil, value = nil)
    @attribute_Type = attribute_Type
    @value = value
  end
end

# MonthlySearchVolumeAttribute
# - attribute_Type - SOAP::SOAPString
# - value - AdwordsApi::V200909::TargetingIdeaService::MonthlySearchVolume
class MonthlySearchVolumeAttribute < Attribute
  attr_accessor :attribute_Type
  attr_accessor :value

  def initialize(attribute_Type = nil, value = [])
    @attribute_Type = attribute_Type
    @value = value
  end
end

# PlacementTypeAttribute
# - attribute_Type - SOAP::SOAPString
# - value - AdwordsApi::V200909::TargetingIdeaService::SiteConstantsPlacementType
class PlacementTypeAttribute < Attribute
  attr_accessor :attribute_Type
  attr_accessor :value

  def initialize(attribute_Type = nil, value = nil)
    @attribute_Type = attribute_Type
    @value = value
  end
end

# StringAttribute
# - attribute_Type - SOAP::SOAPString
# - value - SOAP::SOAPString
class StringAttribute < Attribute
  attr_accessor :attribute_Type
  attr_accessor :value

  def initialize(attribute_Type = nil, value = nil)
    @attribute_Type = attribute_Type
    @value = value
  end
end

# WebpageDescriptorAttribute
# - attribute_Type - SOAP::SOAPString
# - value - AdwordsApi::V200909::TargetingIdeaService::WebpageDescriptor
class WebpageDescriptorAttribute < Attribute
  attr_accessor :attribute_Type
  attr_accessor :value

  def initialize(attribute_Type = nil, value = nil)
    @attribute_Type = attribute_Type
    @value = value
  end
end

# MoneyAttribute
# - attribute_Type - SOAP::SOAPString
# - value - AdwordsApi::V200909::TargetingIdeaService::Money
class MoneyAttribute < Attribute
  attr_accessor :attribute_Type
  attr_accessor :value

  def initialize(attribute_Type = nil, value = nil)
    @attribute_Type = attribute_Type
    @value = value
  end
end

# LongRangeAttribute
# - attribute_Type - SOAP::SOAPString
# - value - AdwordsApi::V200909::TargetingIdeaService::C_Range
class LongRangeAttribute < Attribute
  attr_accessor :attribute_Type
  attr_accessor :value

  def initialize(attribute_Type = nil, value = nil)
    @attribute_Type = attribute_Type
    @value = value
  end
end

# KeywordAttribute
# - attribute_Type - SOAP::SOAPString
# - value - AdwordsApi::V200909::TargetingIdeaService::Keyword
class KeywordAttribute < Attribute
  attr_accessor :attribute_Type
  attr_accessor :value

  def initialize(attribute_Type = nil, value = nil)
    @attribute_Type = attribute_Type
    @value = value
  end
end

# PlacementAttribute
# - attribute_Type - SOAP::SOAPString
# - value - AdwordsApi::V200909::TargetingIdeaService::Placement
class PlacementAttribute < Attribute
  attr_accessor :attribute_Type
  attr_accessor :value

  def initialize(attribute_Type = nil, value = nil)
    @attribute_Type = attribute_Type
    @value = value
  end
end

# Type_AttributeMapEntry
# - key - AdwordsApi::V200909::TargetingIdeaService::AttributeType
# - value - AdwordsApi::V200909::TargetingIdeaService::Attribute
class Type_AttributeMapEntry
  attr_accessor :key
  attr_accessor :value

  def initialize(key = nil, value = nil)
    @key = key
    @value = value
  end
end

# TargetingIdea
# - data - AdwordsApi::V200909::TargetingIdeaService::Type_AttributeMapEntry
class TargetingIdea
  attr_accessor :data

  def initialize(data = [])
    @data = data
  end
end

# TargetingIdeaPage
# - totalNumEntries - SOAP::SOAPInt
# - entries - AdwordsApi::V200909::TargetingIdeaService::TargetingIdea
class TargetingIdeaPage
  attr_accessor :totalNumEntries
  attr_accessor :entries

  def initialize(totalNumEntries = nil, entries = [])
    @totalNumEntries = totalNumEntries
    @entries = entries
  end
end

# AdGroupCriterionError.Reason
class AdGroupCriterionErrorReason < ::String
  BID_INCOMPATIBLE_WITH_ADGROUP = AdGroupCriterionErrorReason.new("BID_INCOMPATIBLE_WITH_ADGROUP")
  CANNOT_TARGET_AND_EXCLUDE = AdGroupCriterionErrorReason.new("CANNOT_TARGET_AND_EXCLUDE")
  CANT_UPDATE_NEGATIVE = AdGroupCriterionErrorReason.new("CANT_UPDATE_NEGATIVE")
  CONCRETE_TYPE_REQUIRED = AdGroupCriterionErrorReason.new("CONCRETE_TYPE_REQUIRED")
  CRITERION_NOT_TARGETED = AdGroupCriterionErrorReason.new("CRITERION_NOT_TARGETED")
  CURRENCY_MISMATCH = AdGroupCriterionErrorReason.new("CURRENCY_MISMATCH")
  ID_FILTERS_HAVE_DIFF_FIELDS_SET = AdGroupCriterionErrorReason.new("ID_FILTERS_HAVE_DIFF_FIELDS_SET")
  ILLEGAL_URL = AdGroupCriterionErrorReason.new("ILLEGAL_URL")
  INAPPLICABLE_FILTER_SPECIFIED = AdGroupCriterionErrorReason.new("INAPPLICABLE_FILTER_SPECIFIED")
  INVALID_DESTINATION_URL = AdGroupCriterionErrorReason.new("INVALID_DESTINATION_URL")
  INVALID_ID_FILTER_TYPE = AdGroupCriterionErrorReason.new("INVALID_ID_FILTER_TYPE")
  INVALID_KEYWORD_TEXT = AdGroupCriterionErrorReason.new("INVALID_KEYWORD_TEXT")
  INVALID_USER_STATUS = AdGroupCriterionErrorReason.new("INVALID_USER_STATUS")
  KEYWORD_LEVEL_BID_NOT_SUPPORTED_FOR_MANUALCPM = AdGroupCriterionErrorReason.new("KEYWORD_LEVEL_BID_NOT_SUPPORTED_FOR_MANUALCPM")
  NETWORK_NOT_OVERRIDABLE = AdGroupCriterionErrorReason.new("NETWORK_NOT_OVERRIDABLE")
  NO_EFFECTIVE_BID_FOR_THIS_CRITERION = AdGroupCriterionErrorReason.new("NO_EFFECTIVE_BID_FOR_THIS_CRITERION")
  TOO_MANY_OPERTAIONS = AdGroupCriterionErrorReason.new("TOO_MANY_OPERTAIONS")
  TYPE_MISMATCH = AdGroupCriterionErrorReason.new("TYPE_MISMATCH")
end

# AdGroupCriterionLimitExceeded.CriteriaLimitType
class AdGroupCriterionLimitExceededCriteriaLimitType < ::String
  ADGROUP_KEYWORD = AdGroupCriterionLimitExceededCriteriaLimitType.new("ADGROUP_KEYWORD")
  ADGROUP_WEBSITE = AdGroupCriterionLimitExceededCriteriaLimitType.new("ADGROUP_WEBSITE")
end

# AgeTarget.Age
class AgeTargetAge < ::String
  AGE_0_17 = AgeTargetAge.new("AGE_0_17")
  AGE_18_24 = AgeTargetAge.new("AGE_18_24")
  AGE_25_34 = AgeTargetAge.new("AGE_25_34")
  AGE_35_44 = AgeTargetAge.new("AGE_35_44")
  AGE_45_54 = AgeTargetAge.new("AGE_45_54")
  AGE_55_64 = AgeTargetAge.new("AGE_55_64")
  AGE_65_PLUS = AgeTargetAge.new("AGE_65_PLUS")
end

# AuthenticationError.Reason
class AuthenticationErrorReason < ::String
  AUTHENTICATION_FAILED = AuthenticationErrorReason.new("AUTHENTICATION_FAILED")
  CLIENT_CUSTOMER_ID_INVALID = AuthenticationErrorReason.new("CLIENT_CUSTOMER_ID_INVALID")
  CLIENT_CUSTOMER_ID_IS_REQUIRED = AuthenticationErrorReason.new("CLIENT_CUSTOMER_ID_IS_REQUIRED")
  CLIENT_EMAIL_FAILED_TO_AUTHENTICATE = AuthenticationErrorReason.new("CLIENT_EMAIL_FAILED_TO_AUTHENTICATE")
  CLIENT_EMAIL_INVALID = AuthenticationErrorReason.new("CLIENT_EMAIL_INVALID")
  CLIENT_EMAIL_REQUIRED = AuthenticationErrorReason.new("CLIENT_EMAIL_REQUIRED")
  CUSTOMER_NOT_FOUND = AuthenticationErrorReason.new("CUSTOMER_NOT_FOUND")
  FAILED_TO_AUTHENTICATE_GOOGLE_ACCOUNT = AuthenticationErrorReason.new("FAILED_TO_AUTHENTICATE_GOOGLE_ACCOUNT")
  FAILED_TO_RETRIEVE_LOGIN_COOKIE = AuthenticationErrorReason.new("FAILED_TO_RETRIEVE_LOGIN_COOKIE")
  GOOGLE_ACCOUNT_COOKIE_INVALID = AuthenticationErrorReason.new("GOOGLE_ACCOUNT_COOKIE_INVALID")
  GOOGLE_ACCOUNT_DELETED = AuthenticationErrorReason.new("GOOGLE_ACCOUNT_DELETED")
  GOOGLE_ACCOUNT_USER_AND_ADS_USER_MISMATCH = AuthenticationErrorReason.new("GOOGLE_ACCOUNT_USER_AND_ADS_USER_MISMATCH")
  LOGIN_COOKIE_INVALID = AuthenticationErrorReason.new("LOGIN_COOKIE_INVALID")
  LOGIN_COOKIE_REQUIRED = AuthenticationErrorReason.new("LOGIN_COOKIE_REQUIRED")
  NOT_ADS_USER = AuthenticationErrorReason.new("NOT_ADS_USER")
  OAUTH_TOKEN_DISABLED = AuthenticationErrorReason.new("OAUTH_TOKEN_DISABLED")
  OAUTH_TOKEN_EXPIRED = AuthenticationErrorReason.new("OAUTH_TOKEN_EXPIRED")
  OAUTH_TOKEN_HEADER_INVALID = AuthenticationErrorReason.new("OAUTH_TOKEN_HEADER_INVALID")
  OAUTH_TOKEN_INVALID = AuthenticationErrorReason.new("OAUTH_TOKEN_INVALID")
  OAUTH_TOKEN_REVOKED = AuthenticationErrorReason.new("OAUTH_TOKEN_REVOKED")
  USER_ID_INVALID = AuthenticationErrorReason.new("USER_ID_INVALID")
end

# AuthorizationError.Reason
class AuthorizationErrorReason < ::String
  EFFECTIVE_USER_PERMISSION_DENIED = AuthorizationErrorReason.new("EFFECTIVE_USER_PERMISSION_DENIED")
  NO_ADWORDS_ACCOUNT_FOR_CUSTOMER = AuthorizationErrorReason.new("NO_ADWORDS_ACCOUNT_FOR_CUSTOMER")
  NO_CUSTOMER_FOUND = AuthorizationErrorReason.new("NO_CUSTOMER_FOUND")
  UNABLE_TO_AUTHORIZE = AuthorizationErrorReason.new("UNABLE_TO_AUTHORIZE")
  USER_HAS_READONLY_PERMISSION = AuthorizationErrorReason.new("USER_HAS_READONLY_PERMISSION")
  USER_PERMISSION_DENIED = AuthorizationErrorReason.new("USER_PERMISSION_DENIED")
end

# BiddingError.Reason
class BiddingErrorReason < ::String
  ADGROUPS_DO_NOT_MATCH_CONSTRAINT = BiddingErrorReason.new("ADGROUPS_DO_NOT_MATCH_CONSTRAINT")
  AUCTION_STRATEGY_INCOMPATIBLE_WITH_PROXY_BIDDER = BiddingErrorReason.new("AUCTION_STRATEGY_INCOMPATIBLE_WITH_PROXY_BIDDER")
  BAD_BID_COMBINATION = BiddingErrorReason.new("BAD_BID_COMBINATION")
  BIDS_DO_NOT_FULFILL_SPEC = BiddingErrorReason.new("BIDS_DO_NOT_FULFILL_SPEC")
  BID_AMOUNT_REQUIRED = BiddingErrorReason.new("BID_AMOUNT_REQUIRED")
  BID_INCOMPATIBLE_WITH_ADGROUP = BiddingErrorReason.new("BID_INCOMPATIBLE_WITH_ADGROUP")
  BID_TOO_BIG = BiddingErrorReason.new("BID_TOO_BIG")
  BID_TOO_HIGH_FOR_DAILY_BUDGET = BiddingErrorReason.new("BID_TOO_HIGH_FOR_DAILY_BUDGET")
  BID_TOO_HIGH_FOR_MONTHLY_BUDGET = BiddingErrorReason.new("BID_TOO_HIGH_FOR_MONTHLY_BUDGET")
  BID_TOO_MANY_FRACTIONAL_DIGITS = BiddingErrorReason.new("BID_TOO_MANY_FRACTIONAL_DIGITS")
  BID_TOO_SMALL = BiddingErrorReason.new("BID_TOO_SMALL")
  BID_TO_POSITION_NOT_ENABLED = BiddingErrorReason.new("BID_TO_POSITION_NOT_ENABLED")
  BID_UNIVERSAL_CRITERIA_EXPECTED = BiddingErrorReason.new("BID_UNIVERSAL_CRITERIA_EXPECTED")
  BOTTOM_POSITION_OUT_OF_RANGE = BiddingErrorReason.new("BOTTOM_POSITION_OUT_OF_RANGE")
  CAMPAIGN_ALREADY_SET = BiddingErrorReason.new("CAMPAIGN_ALREADY_SET")
  CAMPAIGN_MUST_HAVE_A_BUDGET_TO_ENABLE_BUDGET_OPTIMIZER = BiddingErrorReason.new("CAMPAIGN_MUST_HAVE_A_BUDGET_TO_ENABLE_BUDGET_OPTIMIZER")
  CANNOT_CREATE_CAMPAIGN_WITH_CONVERSION_OPTIMIZER = BiddingErrorReason.new("CANNOT_CREATE_CAMPAIGN_WITH_CONVERSION_OPTIMIZER")
  CANNOT_EXCLUDE_DEFAULT = BiddingErrorReason.new("CANNOT_EXCLUDE_DEFAULT")
  CANNOT_SET_CONTENT_BID_WITHOUT_SETTING_KEYWORD_MAX_CPC_AS_WELL = BiddingErrorReason.new("CANNOT_SET_CONTENT_BID_WITHOUT_SETTING_KEYWORD_MAX_CPC_AS_WELL")
  CANNOT_TARGET_AND_EXCLUDE = BiddingErrorReason.new("CANNOT_TARGET_AND_EXCLUDE")
  CANNOT_TARGET_UNIVERSE = BiddingErrorReason.new("CANNOT_TARGET_UNIVERSE")
  CANNOT_UPDATE_SITE_BIDS_WHILE_PROXY_BIDDING = BiddingErrorReason.new("CANNOT_UPDATE_SITE_BIDS_WHILE_PROXY_BIDDING")
  CRITERION_NOT_TARGETED = BiddingErrorReason.new("CRITERION_NOT_TARGETED")
  CURRENCY_MISMATCH = BiddingErrorReason.new("CURRENCY_MISMATCH")
  GOAL_DOES_NOT_FULFILL_SPEC = BiddingErrorReason.new("GOAL_DOES_NOT_FULFILL_SPEC")
  GOAL_VALIDATION_FAILED = BiddingErrorReason.new("GOAL_VALIDATION_FAILED")
  ILLEGAL_URL = BiddingErrorReason.new("ILLEGAL_URL")
  MUST_EXCLUDE_0_TO_17_WITH_OTHER_AGE_EXCLUSIONS = BiddingErrorReason.new("MUST_EXCLUDE_0_TO_17_WITH_OTHER_AGE_EXCLUSIONS")
  NETWORK_NOT_OVERRIDEABLE = BiddingErrorReason.new("NETWORK_NOT_OVERRIDEABLE")
  NETWORK_SETTINGS_DO_NOT_SUPPORT_TRANSITION = BiddingErrorReason.new("NETWORK_SETTINGS_DO_NOT_SUPPORT_TRANSITION")
  NON_POSITIVE_BID = BiddingErrorReason.new("NON_POSITIVE_BID")
  NO_DESTINATION_URL_SPECIFIED = BiddingErrorReason.new("NO_DESTINATION_URL_SPECIFIED")
  NO_EFFECTIVE_BID = BiddingErrorReason.new("NO_EFFECTIVE_BID")
  PAY_PER_CONVERSION_NOT_AVAILABLE_FOR_CUSTOMER = BiddingErrorReason.new("PAY_PER_CONVERSION_NOT_AVAILABLE_FOR_CUSTOMER")
  POSITION_PREFERENCE_NOT_ENABLED = BiddingErrorReason.new("POSITION_PREFERENCE_NOT_ENABLED")
  POSITION_PREFERENCE_NOT_SUPPORTED_FOR_CRITERIA_TYPE = BiddingErrorReason.new("POSITION_PREFERENCE_NOT_SUPPORTED_FOR_CRITERIA_TYPE")
  PREFERRED_POSITION_CANNOT_BE_HIGHER_THAN_BOTTOM = BiddingErrorReason.new("PREFERRED_POSITION_CANNOT_BE_HIGHER_THAN_BOTTOM")
  PREFERRED_POSITION_OUT_OF_RANGE = BiddingErrorReason.new("PREFERRED_POSITION_OUT_OF_RANGE")
  PROXY_BIDDER_STRATEGY_INCOMPATIBLE_WITH_STYLE = BiddingErrorReason.new("PROXY_BIDDER_STRATEGY_INCOMPATIBLE_WITH_STYLE")
  PROXY_NOT_ENABLED = BiddingErrorReason.new("PROXY_NOT_ENABLED")
  TRANSITION_DOES_NOT_SUPPORT_GOAL = BiddingErrorReason.new("TRANSITION_DOES_NOT_SUPPORT_GOAL")
  TRANSITION_DOES_NOT_SUPPORT_OPTION = BiddingErrorReason.new("TRANSITION_DOES_NOT_SUPPORT_OPTION")
  UNSUPPORTED_PROXY_BIDDER_STRATEGY_TRANSITION = BiddingErrorReason.new("UNSUPPORTED_PROXY_BIDDER_STRATEGY_TRANSITION")
  UNSUPPORTED_STYLE = BiddingErrorReason.new("UNSUPPORTED_STYLE")
  UNSUPPORTED_STYLE_TRANSITION = BiddingErrorReason.new("UNSUPPORTED_STYLE_TRANSITION")
end

# BudgetError.Reason
class BudgetErrorReason < ::String
  INVALID_BUDGET_SCHEDULE = BudgetErrorReason.new("INVALID_BUDGET_SCHEDULE")
  MONEY_AMOUNT_IN_WRONG_CURRENCY = BudgetErrorReason.new("MONEY_AMOUNT_IN_WRONG_CURRENCY")
  MONEY_AMOUNT_LESS_THAN_CURRENCY_MINIMUM_CPC = BudgetErrorReason.new("MONEY_AMOUNT_LESS_THAN_CURRENCY_MINIMUM_CPC")
  MONEY_AMOUNT_LESS_THAN_MAXIMUM_AD_GROUP_CPM = BudgetErrorReason.new("MONEY_AMOUNT_LESS_THAN_MAXIMUM_AD_GROUP_CPM")
  MONEY_AMOUNT_LESS_THAN_MAXIMUM_SITE_CPM = BudgetErrorReason.new("MONEY_AMOUNT_LESS_THAN_MAXIMUM_SITE_CPM")
  MONEY_AMOUNT_LESS_THAN_MINIMUM_AD_GROUP_CPC = BudgetErrorReason.new("MONEY_AMOUNT_LESS_THAN_MINIMUM_AD_GROUP_CPC")
  MONEY_AMOUNT_LESS_THAN_MINIMUM_CRITERIA_CPC = BudgetErrorReason.new("MONEY_AMOUNT_LESS_THAN_MINIMUM_CRITERIA_CPC")
  MONEY_AMOUNT_TOO_LARGE = BudgetErrorReason.new("MONEY_AMOUNT_TOO_LARGE")
  NEGATIVE_MONEY_AMOUNT = BudgetErrorReason.new("NEGATIVE_MONEY_AMOUNT")
  NON_MULTIPLE_OF_MINIMUM_CURRENCY_UNIT = BudgetErrorReason.new("NON_MULTIPLE_OF_MINIMUM_CURRENCY_UNIT")
end

# ClientTermsError.Reason
class ClientTermsErrorReason < ::String
  INCOMPLETE_SIGNUP_CURRENT_ADWORDS_TNC_NOT_AGREED = ClientTermsErrorReason.new("INCOMPLETE_SIGNUP_CURRENT_ADWORDS_TNC_NOT_AGREED")
end

# DatabaseError.Reason
class DatabaseErrorReason < ::String
  CAMPAIGN_PRODUCT_NOT_SUPPORTED = DatabaseErrorReason.new("CAMPAIGN_PRODUCT_NOT_SUPPORTED")
  CONCURRENT_MODIFICATION = DatabaseErrorReason.new("CONCURRENT_MODIFICATION")
  PERMISSION_DENIED = DatabaseErrorReason.new("PERMISSION_DENIED")
end

# DateError.Reason
class DateErrorReason < ::String
  DATE_RANGE_MINIMUM_AND_MAXIMUM_DATES_BOTH_NULL = DateErrorReason.new("DATE_RANGE_MINIMUM_AND_MAXIMUM_DATES_BOTH_NULL")
  DATE_RANGE_MINIMUM_DATE_LATER_THAN_MAXIMUM_DATE = DateErrorReason.new("DATE_RANGE_MINIMUM_DATE_LATER_THAN_MAXIMUM_DATE")
  EARLIER_THAN_MINIMUM_DATE = DateErrorReason.new("EARLIER_THAN_MINIMUM_DATE")
  INVALID_FIELD_VALUES_IN_DATE = DateErrorReason.new("INVALID_FIELD_VALUES_IN_DATE")
  INVALID_STRING_DATE = DateErrorReason.new("INVALID_STRING_DATE")
  INVALID_STRING_DATE_RANGE = DateErrorReason.new("INVALID_STRING_DATE_RANGE")
  INVALID_STRING_DATE_TIME = DateErrorReason.new("INVALID_STRING_DATE_TIME")
  LATER_THAN_MAXIMUM_DATE = DateErrorReason.new("LATER_THAN_MAXIMUM_DATE")
end

# DayOfWeek
class DayOfWeek < ::String
  FRIDAY = DayOfWeek.new("FRIDAY")
  MONDAY = DayOfWeek.new("MONDAY")
  SATURDAY = DayOfWeek.new("SATURDAY")
  SUNDAY = DayOfWeek.new("SUNDAY")
  THURSDAY = DayOfWeek.new("THURSDAY")
  TUESDAY = DayOfWeek.new("TUESDAY")
  WEDNESDAY = DayOfWeek.new("WEDNESDAY")
end

# DistinctError.Reason
class DistinctErrorReason < ::String
  DUPLICATE_ELEMENT = DistinctErrorReason.new("DUPLICATE_ELEMENT")
end

# EntityCountLimitExceeded.Reason
class EntityCountLimitExceededReason < ::String
  ACCOUNT_LIMIT = EntityCountLimitExceededReason.new("ACCOUNT_LIMIT")
  ADGROUP_LIMIT = EntityCountLimitExceededReason.new("ADGROUP_LIMIT")
  CAMPAIGN_LIMIT = EntityCountLimitExceededReason.new("CAMPAIGN_LIMIT")
end

# EntityNotFound.Reason
class EntityNotFoundReason < ::String
  INVALID_ID = EntityNotFoundReason.new("INVALID_ID")
end

# GenderTarget.Gender
class GenderTargetGender < ::String
  FEMALE = GenderTargetGender.new("FEMALE")
  MALE = GenderTargetGender.new("MALE")
end

# InternalApiError.Reason
class InternalApiErrorReason < ::String
  UNEXPECTED_INTERNAL_API_ERROR = InternalApiErrorReason.new("UNEXPECTED_INTERNAL_API_ERROR")
end

# KeywordMatchType
class KeywordMatchType < ::String
  BROAD = KeywordMatchType.new("BROAD")
  EXACT = KeywordMatchType.new("EXACT")
  PHRASE = KeywordMatchType.new("PHRASE")
end

# MinuteOfHour
class MinuteOfHour < ::String
  FIFTEEN = MinuteOfHour.new("FIFTEEN")
  FORTY_FIVE = MinuteOfHour.new("FORTY_FIVE")
  THIRTY = MinuteOfHour.new("THIRTY")
  ZERO = MinuteOfHour.new("ZERO")
end

# NetworkCoverageType
class NetworkCoverageType < ::String
  CONTENT_CONTEXTUAL = NetworkCoverageType.new("CONTENT_CONTEXTUAL")
  CONTENT_NETWORK = NetworkCoverageType.new("CONTENT_NETWORK")
  CPA_REFERRAL = NetworkCoverageType.new("CPA_REFERRAL")
  GOOGLE_SEARCH = NetworkCoverageType.new("GOOGLE_SEARCH")
  SEARCH_NETWORK = NetworkCoverageType.new("SEARCH_NETWORK")
end

# NotEmptyError.Reason
class NotEmptyErrorReason < ::String
  EMPTY_LIST = NotEmptyErrorReason.new("EMPTY_LIST")
end

# NotWhitelistedError.Reason
class NotWhitelistedErrorReason < ::String
  CUSTOMER_NOT_WHITELISTED_FOR_API = NotWhitelistedErrorReason.new("CUSTOMER_NOT_WHITELISTED_FOR_API")
end

# NullError.Reason
class NullErrorReason < ::String
  NULL_CONTENT = NullErrorReason.new("NULL_CONTENT")
end

# PlatformType
class PlatformType < ::String
  DESKTOP = PlatformType.new("DESKTOP")
  HIGH_END_MOBILE = PlatformType.new("HIGH_END_MOBILE")
end

# ProximityTarget.DistanceUnits
class ProximityTargetDistanceUnits < ::String
  KILOMETERS = ProximityTargetDistanceUnits.new("KILOMETERS")
  MILES = ProximityTargetDistanceUnits.new("MILES")
end

# QuotaCheckError.Reason
class QuotaCheckErrorReason < ::String
  ACCOUNT_DELINQUENT = QuotaCheckErrorReason.new("ACCOUNT_DELINQUENT")
  ACCOUNT_INACCESSIBLE = QuotaCheckErrorReason.new("ACCOUNT_INACCESSIBLE")
  ACCOUNT_INACTIVE = QuotaCheckErrorReason.new("ACCOUNT_INACTIVE")
  INCOMPLETE_SIGNUP = QuotaCheckErrorReason.new("INCOMPLETE_SIGNUP")
  INCOMPLETE_SIGNUP_APP_INFO_MISSING = QuotaCheckErrorReason.new("INCOMPLETE_SIGNUP_APP_INFO_MISSING")
  INCOMPLETE_SIGNUP_APP_INFO_PENDING = QuotaCheckErrorReason.new("INCOMPLETE_SIGNUP_APP_INFO_PENDING")
  INCOMPLETE_SIGNUP_APP_INFO_REJECTED = QuotaCheckErrorReason.new("INCOMPLETE_SIGNUP_APP_INFO_REJECTED")
  INCOMPLETE_SIGNUP_LATEST_NETAPI_TNC_NOT_AGREED = QuotaCheckErrorReason.new("INCOMPLETE_SIGNUP_LATEST_NETAPI_TNC_NOT_AGREED")
  INCOMPLETE_SIGNUP_NO_BILLING_INFO = QuotaCheckErrorReason.new("INCOMPLETE_SIGNUP_NO_BILLING_INFO")
  INCOMPLETE_SIGNUP_USER_INFO_MISSING = QuotaCheckErrorReason.new("INCOMPLETE_SIGNUP_USER_INFO_MISSING")
  INCOMPLETE_SIGNUP_USER_INFO_PENDING = QuotaCheckErrorReason.new("INCOMPLETE_SIGNUP_USER_INFO_PENDING")
  INCOMPLETE_SIGNUP_USER_INFO_REJECTED = QuotaCheckErrorReason.new("INCOMPLETE_SIGNUP_USER_INFO_REJECTED")
  INVALID_TOKEN_HEADER = QuotaCheckErrorReason.new("INVALID_TOKEN_HEADER")
  MONTHLY_BUDGET_REACHED = QuotaCheckErrorReason.new("MONTHLY_BUDGET_REACHED")
  QUOTA_EXCEEDED = QuotaCheckErrorReason.new("QUOTA_EXCEEDED")
end

# QuotaExceededError.Reason
class QuotaExceededErrorReason < ::String
  QUOTA_EXCEEDED = QuotaExceededErrorReason.new("QUOTA_EXCEEDED")
end

# RangeError.Reason
class RangeErrorReason < ::String
  TOO_HIGH = RangeErrorReason.new("TOO_HIGH")
  TOO_LOW = RangeErrorReason.new("TOO_LOW")
end

# ReadOnlyError.Reason
class ReadOnlyErrorReason < ::String
  READ_ONLY = ReadOnlyErrorReason.new("READ_ONLY")
end

# RegionCodeError.Reason
class RegionCodeErrorReason < ::String
  INVALID_REGION_CODE = RegionCodeErrorReason.new("INVALID_REGION_CODE")
end

# RequiredError.Reason
class RequiredErrorReason < ::String
  REQUIRED = RequiredErrorReason.new("REQUIRED")
end

# SizeLimitError.Reason
class SizeLimitErrorReason < ::String
  REQUEST_SIZE_LIMIT_EXCEEDED = SizeLimitErrorReason.new("REQUEST_SIZE_LIMIT_EXCEEDED")
  RESPONSE_SIZE_LIMIT_EXCEEDED = SizeLimitErrorReason.new("RESPONSE_SIZE_LIMIT_EXCEEDED")
end

# StatsQueryError.Reason
class StatsQueryErrorReason < ::String
  DATE_NOT_IN_VALID_RANGE = StatsQueryErrorReason.new("DATE_NOT_IN_VALID_RANGE")
end

# StringLengthError.Reason
class StringLengthErrorReason < ::String
  TOO_LONG = StringLengthErrorReason.new("TOO_LONG")
  TOO_SHORT = StringLengthErrorReason.new("TOO_SHORT")
end

# TargetError.Reason
class TargetErrorReason < ::String
  AD_SCHEDULE_ADVANCED_INCOMPATIBLE_WITH_CONVERSION_OPTIMIZER = TargetErrorReason.new("AD_SCHEDULE_ADVANCED_INCOMPATIBLE_WITH_CONVERSION_OPTIMIZER")
  AD_SCHEDULE_BID_MULTIPLIER_MALFORMED = TargetErrorReason.new("AD_SCHEDULE_BID_MULTIPLIER_MALFORMED")
  AD_SCHEDULE_BID_MULTIPLIER_TOO_BIG = TargetErrorReason.new("AD_SCHEDULE_BID_MULTIPLIER_TOO_BIG")
  AD_SCHEDULE_BID_MULTIPLIER_TOO_MANY_FRACTION_DIGITS = TargetErrorReason.new("AD_SCHEDULE_BID_MULTIPLIER_TOO_MANY_FRACTION_DIGITS")
  AD_SCHEDULE_BID_MULTIPLIER_TOO_SMALL = TargetErrorReason.new("AD_SCHEDULE_BID_MULTIPLIER_TOO_SMALL")
  AD_SCHEDULE_EXCEEDED_INTERVALS_PER_DAY_LIMIT = TargetErrorReason.new("AD_SCHEDULE_EXCEEDED_INTERVALS_PER_DAY_LIMIT")
  AD_SCHEDULE_EXCEEDS_PAST_END_OF_WEEK = TargetErrorReason.new("AD_SCHEDULE_EXCEEDS_PAST_END_OF_WEEK")
  AD_SCHEDULE_INCOMPATIBILITY = TargetErrorReason.new("AD_SCHEDULE_INCOMPATIBILITY")
  AD_SCHEDULE_INCOMPATIBLE_WITH_BUDGET_OPTIMIZER = TargetErrorReason.new("AD_SCHEDULE_INCOMPATIBLE_WITH_BUDGET_OPTIMIZER")
  AD_SCHEDULE_INTERVAL_CANNOT_SPAN_MULTIPLE_DAYS = TargetErrorReason.new("AD_SCHEDULE_INTERVAL_CANNOT_SPAN_MULTIPLE_DAYS")
  AD_SCHEDULE_INVALID_DAY_OF_THE_WEEK = TargetErrorReason.new("AD_SCHEDULE_INVALID_DAY_OF_THE_WEEK")
  AD_SCHEDULE_INVALID_TIME_INTERVAL = TargetErrorReason.new("AD_SCHEDULE_INVALID_TIME_INTERVAL")
  AD_SCHEDULE_NOT_MULTIPLE_OF_15_MINUTES = TargetErrorReason.new("AD_SCHEDULE_NOT_MULTIPLE_OF_15_MINUTES")
  AD_SCHEDULE_NO_INTERVALS_WHILE_ENABLED = TargetErrorReason.new("AD_SCHEDULE_NO_INTERVALS_WHILE_ENABLED")
  AD_SCHEDULE_TIME_INTERVALS_OVERLAP = TargetErrorReason.new("AD_SCHEDULE_TIME_INTERVALS_OVERLAP")
  CANNOT_EXCLUDE_CITY = TargetErrorReason.new("CANNOT_EXCLUDE_CITY")
  CANNOT_EXCLUDE_IF_NOT_TARGETED = TargetErrorReason.new("CANNOT_EXCLUDE_IF_NOT_TARGETED")
  CANNOT_EXCLUDE_METRO = TargetErrorReason.new("CANNOT_EXCLUDE_METRO")
  CANNOT_EXCLUDE_PROVINCE = TargetErrorReason.new("CANNOT_EXCLUDE_PROVINCE")
  CANNOT_OPT_OUT_GOOGLE_SEARCH_WHILE_BID_TO_POSITION_ENABLE = TargetErrorReason.new("CANNOT_OPT_OUT_GOOGLE_SEARCH_WHILE_BID_TO_POSITION_ENABLE")
  CANNOT_TARGET_AGE_WITHOUT_GENDER = TargetErrorReason.new("CANNOT_TARGET_AGE_WITHOUT_GENDER")
  CANNOT_TARGET_CITY = TargetErrorReason.new("CANNOT_TARGET_CITY")
  CANNOT_TARGET_COUNTRY = TargetErrorReason.new("CANNOT_TARGET_COUNTRY")
  CANNOT_TARGET_COVERAGE = TargetErrorReason.new("CANNOT_TARGET_COVERAGE")
  CANNOT_TARGET_GENDER_WITHOUT_AGE = TargetErrorReason.new("CANNOT_TARGET_GENDER_WITHOUT_AGE")
  CANNOT_TARGET_GOOGLE_SEARCH_FOR_CPM_CAMPAIGN = TargetErrorReason.new("CANNOT_TARGET_GOOGLE_SEARCH_FOR_CPM_CAMPAIGN")
  CANNOT_TARGET_LANGUAGE = TargetErrorReason.new("CANNOT_TARGET_LANGUAGE")
  CANNOT_TARGET_METRO = TargetErrorReason.new("CANNOT_TARGET_METRO")
  CANNOT_TARGET_PROVINCE = TargetErrorReason.new("CANNOT_TARGET_PROVINCE")
  CANNOT_TARGET_SEARCH_SYNDICATION_WITHOUT_GOOGLE_SEARCH = TargetErrorReason.new("CANNOT_TARGET_SEARCH_SYNDICATION_WITHOUT_GOOGLE_SEARCH")
  CANNOT_TARGET_SYNDICATABLE_TYPES = TargetErrorReason.new("CANNOT_TARGET_SYNDICATABLE_TYPES")
  DEMOGRAPHIC_BID_MODIFIER_SHOULD_BE_IN_BETWEEN_0_AND_500 = TargetErrorReason.new("DEMOGRAPHIC_BID_MODIFIER_SHOULD_BE_IN_BETWEEN_0_AND_500")
  INVALID_CITYNAME_LENGTH = TargetErrorReason.new("INVALID_CITYNAME_LENGTH")
  INVALID_CITY_CODE = TargetErrorReason.new("INVALID_CITY_CODE")
  INVALID_LANGUAGE_CODE = TargetErrorReason.new("INVALID_LANGUAGE_CODE")
  INVALID_LATITUDE = TargetErrorReason.new("INVALID_LATITUDE")
  INVALID_LONGITUDE = TargetErrorReason.new("INVALID_LONGITUDE")
  INVALID_METRO_CODE = TargetErrorReason.new("INVALID_METRO_CODE")
  INVALID_POSTALCODE_LENGTH = TargetErrorReason.new("INVALID_POSTALCODE_LENGTH")
  INVALID_PROVINCE_CODE = TargetErrorReason.new("INVALID_PROVINCE_CODE")
  INVALID_PROXIMITY_RADIUS = TargetErrorReason.new("INVALID_PROXIMITY_RADIUS")
  INVALID_REGIONCODE_LENGTH = TargetErrorReason.new("INVALID_REGIONCODE_LENGTH")
  INVALID_REGIONNAME_LENGTH = TargetErrorReason.new("INVALID_REGIONNAME_LENGTH")
  INVALID_STREETADDRESS_LENGTH = TargetErrorReason.new("INVALID_STREETADDRESS_LENGTH")
  MULTIPLE_OCCURRENCES_OF_SAME_TARGET = TargetErrorReason.new("MULTIPLE_OCCURRENCES_OF_SAME_TARGET")
  POLYGON_DUPLICATE_VERTICES = TargetErrorReason.new("POLYGON_DUPLICATE_VERTICES")
  POLYGON_EDGES_INTERSECT = TargetErrorReason.new("POLYGON_EDGES_INTERSECT")
  POLYGON_TOO_FEW_VERTICES = TargetErrorReason.new("POLYGON_TOO_FEW_VERTICES")
  POLYGON_TOO_LARGE = TargetErrorReason.new("POLYGON_TOO_LARGE")
  TARGETING_CROSS_COUNTRY_REGIONAL = TargetErrorReason.new("TARGETING_CROSS_COUNTRY_REGIONAL")
  TARGETING_EXCLUSION_NOT_SUPPORTED = TargetErrorReason.new("TARGETING_EXCLUSION_NOT_SUPPORTED")
  TARGETING_INCOMPATIBLE_LOCATION_TYPES = TargetErrorReason.new("TARGETING_INCOMPATIBLE_LOCATION_TYPES")
  TARGETING_NOT_SUPPORTED = TargetErrorReason.new("TARGETING_NOT_SUPPORTED")
  TARGETING_TOO_MANY_REGIONS = TargetErrorReason.new("TARGETING_TOO_MANY_REGIONS")
  TARGETING_VALIDATION_FAILED = TargetErrorReason.new("TARGETING_VALIDATION_FAILED")
  TARGET_IS_ENCLOSED_BY_ANOTHER_TARGET = TargetErrorReason.new("TARGET_IS_ENCLOSED_BY_ANOTHER_TARGET")
  TARGET_IS_EXCLUDED_BY_ANOTHER_TARGET = TargetErrorReason.new("TARGET_IS_EXCLUDED_BY_ANOTHER_TARGET")
  TOO_MANY_EXCLUDED_LOCATIONS = TargetErrorReason.new("TOO_MANY_EXCLUDED_LOCATIONS")
  TOO_MANY_TARGETED_LOCATIONS = TargetErrorReason.new("TOO_MANY_TARGETED_LOCATIONS")
  WARNING_MAY_NOW_REQUIRE_CHINESE_APPROVAL = TargetErrorReason.new("WARNING_MAY_NOW_REQUIRE_CHINESE_APPROVAL")
  WARNING_NOW_REQUIRES_CHINESE_APPROVAL = TargetErrorReason.new("WARNING_NOW_REQUIRES_CHINESE_APPROVAL")
  WARNING_NOW_TARGETS_CHINA = TargetErrorReason.new("WARNING_NOW_TARGETS_CHINA")
  WARNING_NOW_TARGETS_CHINESE = TargetErrorReason.new("WARNING_NOW_TARGETS_CHINESE")
end

# AttributeType
class AttributeType < ::String
  AD_SHARE = AttributeType.new("AD_SHARE")
  APPROX_CONTENT_IMPRESSIONS_PER_DAY = AttributeType.new("APPROX_CONTENT_IMPRESSIONS_PER_DAY")
  AVERAGE_TARGETED_MONTHLY_SEARCHES = AttributeType.new("AVERAGE_TARGETED_MONTHLY_SEARCHES")
  COMPETITION = AttributeType.new("COMPETITION")
  EXTRACTED_FROM_WEBPAGE = AttributeType.new("EXTRACTED_FROM_WEBPAGE")
  FORMATS = AttributeType.new("FORMATS")
  GLOBAL_MONTHLY_SEARCHES = AttributeType.new("GLOBAL_MONTHLY_SEARCHES")
  IDEA_TYPE = AttributeType.new("IDEA_TYPE")
  IN_STREAM_AD_INFO = AttributeType.new("IN_STREAM_AD_INFO")
  KEYWORD = AttributeType.new("KEYWORD")
  KEYWORD_CATEGORY = AttributeType.new("KEYWORD_CATEGORY")
  NGRAM_GROUP = AttributeType.new("NGRAM_GROUP")
  PLACEMENT = AttributeType.new("PLACEMENT")
  PLACEMENT_CATEGORY = AttributeType.new("PLACEMENT_CATEGORY")
  PLACEMENT_NAME = AttributeType.new("PLACEMENT_NAME")
  PLACEMENT_TYPE = AttributeType.new("PLACEMENT_TYPE")
  PUBLISHER_DESCRIPTION = AttributeType.new("PUBLISHER_DESCRIPTION")
  SAMPLE_URL = AttributeType.new("SAMPLE_URL")
  SEARCH_SHARE = AttributeType.new("SEARCH_SHARE")
  TARGETED_MONTHLY_SEARCHES = AttributeType.new("TARGETED_MONTHLY_SEARCHES")
end

# CollectionSizeError.Reason
class CollectionSizeErrorReason < ::String
  TOO_FEW = CollectionSizeErrorReason.new("TOO_FEW")
  TOO_MANY = CollectionSizeErrorReason.new("TOO_MANY")
end

# CompetitionSearchParameter.Level
class CompetitionSearchParameterLevel < ::String
  HIGH = CompetitionSearchParameterLevel.new("HIGH")
  LOW = CompetitionSearchParameterLevel.new("LOW")
  MEDIUM = CompetitionSearchParameterLevel.new("MEDIUM")
end

# IdeaType
class IdeaType < ::String
  KEYWORD = IdeaType.new("KEYWORD")
  PLACEMENT = IdeaType.new("PLACEMENT")
end

# RequestType
class RequestType < ::String
  IDEAS = RequestType.new("IDEAS")
  STATS = RequestType.new("STATS")
end

# SiteConstants.AdFormat
class SiteConstantsAdFormat < ::String
  IMAGE = SiteConstantsAdFormat.new("IMAGE")
  INSTREAM = SiteConstantsAdFormat.new("INSTREAM")
  TEXT = SiteConstantsAdFormat.new("TEXT")
  VIDEO = SiteConstantsAdFormat.new("VIDEO")
end

# SiteConstants.AdType
class SiteConstantsAdType < ::String
  DISPLAY = SiteConstantsAdType.new("DISPLAY")
  TEXT = SiteConstantsAdType.new("TEXT")
end

# SiteConstants.PlacementType
class SiteConstantsPlacementType < ::String
  FEED = SiteConstantsPlacementType.new("FEED")
  GAME = SiteConstantsPlacementType.new("GAME")
  MOBILE = SiteConstantsPlacementType.new("MOBILE")
  SITE = SiteConstantsPlacementType.new("SITE")
  VIDEO = SiteConstantsPlacementType.new("VIDEO")
end

# TargetingIdeaError.Reason
class TargetingIdeaErrorReason < ::String
  DUPLICATE_SEARCH_FILTER_TYPES_PRESENT = TargetingIdeaErrorReason.new("DUPLICATE_SEARCH_FILTER_TYPES_PRESENT")
  INSUFFICIENT_SEARCH_PARAMETERS = TargetingIdeaErrorReason.new("INSUFFICIENT_SEARCH_PARAMETERS")
  INVALID_ATTRIBUTE_TYPE = TargetingIdeaErrorReason.new("INVALID_ATTRIBUTE_TYPE")
  INVALID_SEARCH_PARAMETERS = TargetingIdeaErrorReason.new("INVALID_SEARCH_PARAMETERS")
  INVALID_URL_IN_SEARCH_PARAMETER = TargetingIdeaErrorReason.new("INVALID_URL_IN_SEARCH_PARAMETER")
  MUTUALLY_EXCLUSIVE_SEARCH_PARAMETERS_IN_QUERY = TargetingIdeaErrorReason.new("MUTUALLY_EXCLUSIVE_SEARCH_PARAMETERS_IN_QUERY")
  NO_PAGING_IN_SELECTOR = TargetingIdeaErrorReason.new("NO_PAGING_IN_SELECTOR")
  SERVICE_UNAVAILABLE = TargetingIdeaErrorReason.new("SERVICE_UNAVAILABLE")
  TOO_MANY_RESULTS_REQUESTED = TargetingIdeaErrorReason.new("TOO_MANY_RESULTS_REQUESTED")
end

# get
# - selector - AdwordsApi::V200909::TargetingIdeaService::TargetingIdeaSelector
class Get #:nodoc: all
  attr_accessor :selector

  def initialize(selector = nil)
    @selector = selector
  end
end

# getResponse
# - rval - AdwordsApi::V200909::TargetingIdeaService::TargetingIdeaPage
class GetResponse #:nodoc: all
  attr_accessor :rval

  def initialize(rval = nil)
    @rval = rval
  end
end

# getBulkKeywordIdeas
# - selector - AdwordsApi::V200909::TargetingIdeaService::TargetingIdeaSelector
class GetBulkKeywordIdeas #:nodoc: all
  attr_accessor :selector

  def initialize(selector = nil)
    @selector = selector
  end
end

# getBulkKeywordIdeasResponse
# - rval - AdwordsApi::V200909::TargetingIdeaService::TargetingIdeaPage
class GetBulkKeywordIdeasResponse #:nodoc: all
  attr_accessor :rval

  def initialize(rval = nil)
    @rval = rval
  end
end


end; end; end
