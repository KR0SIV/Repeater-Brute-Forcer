require 'rubygems'
require 'serialport' #gem install serialport
require 'win32/sound'
include Win32
exit if Object.const_defined?(:Ocra) #allow ocra to create an exe without executing the entire script

##copyright
#This software is licensed under GPL version 2. See file
#COPYING for details.
#
#(c) 2014 Harold Giddings, KR0SIV
##End Copyright

##
#The purpose of this software is to automate the process of finding the PL tone for a given radio system.
#It is NOT to be used to gain access to close systems that you shouldn't be on.
#I claim no responsibility should you use this software to access a radio system you do not have permission or legal access to.
##

class Brute
	def Initialize()
		
	end
	
	def send_tone(freq)
		puts ''
		puts ''
		puts 'Turning on Transmitter'
		#serial rts pin on
		$ptt.rts = 1
		puts "playing tone: #{freq}Hz"
		Sound.beep(freq.to_i, 3000)
		puts ''
		puts ''
		puts 'turning off transmitter'
		#serial rts pin off
		$ptt.rts = 0
		puts "Next TX in #{$delay} seconds"
			sleep ($delay.to_i)
			end
		puts ''
		puts ''
	end
	
	
	
puts "This software is NOT to be used in attempts to gain access to repeaters and radio systems to you not have legal access to or permission to use."	
puts "This software is free to use, however you hold full responsibility for it's use"
puts ""
puts "Adjust your computer audio level and check that it's properly transmitting the tones, some radio filters don't allow proper transmission."
puts "Written by KR0SIV"
print ""
print "Enter Radio Com Port Number: "
port = gets.chomp
$ptt = SerialPort.new("COM#{port}", 9600)

puts ""
#print "Enter Radio Com Port Number: "
#port = gets.chomp
print "Seconds between transmissions: "
$delay = gets.chomp
	
tone = Brute.new()

##this is just not the right way to do this but I'm lazy

tone.send_tone("67.0")
tone.send_tone("69.3")
tone.send_tone("71.9")
tone.send_tone("74.4")
tone.send_tone("77.0")
tone.send_tone("79.7")
tone.send_tone("82.5")
tone.send_tone("85.4")
tone.send_tone("88.5")
tone.send_tone("91.5")
tone.send_tone("94.8")
tone.send_tone("97.4")
tone.send_tone("100.0")
tone.send_tone("103.5")
tone.send_tone("107.2")
tone.send_tone("110.9")
tone.send_tone("114.8")
tone.send_tone("118.8")
tone.send_tone("123.0")
tone.send_tone("127.3")
tone.send_tone("131.8")
tone.send_tone("136.5")
tone.send_tone("141.3")
tone.send_tone("146.2")
tone.send_tone("151.4")
tone.send_tone("156.7")
tone.send_tone("162.2")
tone.send_tone("167.9")
tone.send_tone("173.8")
tone.send_tone("179.9")
tone.send_tone("186.2")
tone.send_tone("192.8")
tone.send_tone("203.5")
tone.send_tone("206.5")
tone.send_tone("210.7")
tone.send_tone("218.1")
tone.send_tone("225.7")
tone.send_tone("229.1")
tone.send_tone("233.6")
tone.send_tone("241.8")
tone.send_tone("250.3")
tone.send_tone("254.1")

puts ""
puts ""
puts "Program completed"