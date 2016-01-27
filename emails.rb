require 'rubygems'
require 'bundler/setup'

require 'logan'
if (ARGV.length != 3)
  puts "USAGE: basecamp_ID username password"
  exit()
end
basecamp_ID = ARGV[0]
auth_hash = { :username => ARGV[1], :password => ARGV[2] }
user_agent = "LoganUserAgent (#{ARGV[1]})"

logan = Logan::Client.new(basecamp_ID, auth_hash, user_agent)

our_project = logan.projects.first

results = logan.people.select {|p| p.projects.any? {|proj| proj.id == our_project.id}}

results.map {|r| r.email_address.downcase}.sort.each {|r| puts r}
