#!/usr/bin/ruby

require 'net/imap'
require 'mail'
require 'io/console'

imap = Net::IMAP.new('outlook.office365.com', 993, true)
print 'login: '
imap.login(gets.chomp, STDIN.getpass('password: '))

puts imap.select('INBOX')
