CAPTURE_SHOP_TYPE = Transform /^([\w]+?\s?[\w]+\s?[\w']+)+$/ do |shop_name|
  shop_name
end

CAPTURE_MULTIPLE_WORDS = Transform /^(.+)$/ do | words |
  words
end
