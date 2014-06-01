#!/usr/bin/env ruby

require 'nokogiri'

def external?(url)
  url.start_with?('http') and !url.start_with?('http://localwiki')
end

doc = Nokogiri::HTML(ARGF.read)

doc.css('a').each do |link|
  url = link['href']
  puts url if external?(url)
end
