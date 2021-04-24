require 'tty-prompt'
require 'colorize'

class L1aPrep

    # prints the WP Engine text in CLI screen

    def self.logo
        
        puts "
        888       8888888888b.    8888888888                d8b                 
        888   o   888888   Y88b   888                       Y8P                 
        888  d8b  888888    888   888                                           
        888 d888b 888888   d88P   8888888   88888b.  .d88b. 88888888b.  .d88b.  
        888d88888b8888888888P     888       888  88bd88P 88b888888  8bd8P  Y8b 
        88888P Y88888888          888       888  888888  888888888  88888888888 
        8888P   Y8888888          888       888  888Y88b 888888888  888Y8b.     
        888P     Y888888          8888888888888  888  Y88888888888  888  Y8888  
                                                        888                    
                                                    Y8b d88P                    
                                                    Y88P                     
        ".green
        puts "
        ** Pass the L1A Assessment **
        ".green
    end

    self.logo

    def self.questions

        # score

        @num_of_q = 0
        @correct = 0
        
        # question 1

        prompt = TTY::Prompt.new
        question = 'The primary migration process you will use as an L1a'
        choices = %w(magic reparent internal geo-targeted)
        answer = prompt.select(question, choices)
            if answer == "magic"
                puts ''
                puts '  >> Correct! Magic Migrations are set in overdrive'
                puts ''
                @num_of_q += 1
                @correct += 1
            else
                puts ''
                puts '  >> Not quite... moving right along!'
                puts ''
                @num_of_q += 1
                @correct = @correct
            end

        puts " | #{@correct} | out of #{@num_of_q} questions correct".green
        puts ''

        # question 2

        prompt = TTY::Prompt.new
        
        answer = prompt.select('What is a M2p Migration?') do |menu|
  
            menu.choice 'Member to Peer'
            menu.choice 'Member to Platform'
            menu.choice 'Move to preferred'
            menu.choice 'Move to Peer'
        end
        
        if answer == "Move to preferred"
            puts ''
            puts '  >> Correct! Manual migration that can be done from the terminal (only to be used if the magic functionality is not available)'
            puts ''
            @num_of_q += 1
            @correct += 1
        else
            puts ''
            puts '  >> Not quite... Move to Preferred. Moving right along!'
            puts ''
            @num_of_q += 1
            @correct = @correct
        end

        puts " | #{@correct} | out of #{@num_of_q} questions correct".green
        puts ''
        
        # question 3

        prompt = TTY::Prompt.new
        answer = prompt.ask('File location of the Nginx access log? ... use \'install\' as the site name')

        if answer == "/var/log/nginx/install.access.log"
            puts ''
            puts '  >> Correct!'
            puts ''
            @num_of_q += 1
            @correct += 1
        else
            puts ''
            puts '  >> Not quite... /var/log/nginx/install.access.log'
            puts ''
            @num_of_q += 1
            @correct = @correct
        end

        puts " | #{@correct} | out of #{@num_of_q} questions correct".green
        puts ''

        # question 4

        prompt = TTY::Prompt.new
        answer = prompt.ask('File location of the apachestyle Nginx access log? ... use \'install\' as the site name')

        if answer == "/var/log/nginx/install.apachestyle.log"
            puts ''
            puts '  >> Correct!  Note that the apachestyle logs are the Nginx logs, but keep the same formatting of the Apache logs'
            puts ''
            @num_of_q += 1
            @correct += 1
        else
            puts ''
            puts '  >> Not quite... /var/log/nginx/install.apachestyle.log'
            puts ''
            @num_of_q += 1
            @correct = @correct
        end

        puts " | #{@correct} | out of #{@num_of_q} questions correct".green
        puts ''

        # question 5

        prompt = TTY::Prompt.new
        answer = prompt.ask('File location for logs of killed apache processes?')

        if answer == "/var/log/apache-killed-by-wpe.log"
            puts ''
            puts '  >> Correct!'
            puts ''
            @num_of_q += 1
            @correct += 1
        else
            puts ''
            puts '  >> Not quite... /var/log/apache-killed-by-wpe.log'
            puts ''
            @num_of_q += 1
            @correct = @correct
        end

        puts " | #{@correct} | out of #{@num_of_q} questions correct".green
        puts ''

        # question 6

        prompt = TTY::Prompt.new
        answer = prompt.ask('File location of the apache access log? ... use \'install\' as the site name')

        if answer == "/var/log/apache2/install.access.log"
            puts ''
            puts '  >> Correct!'
            puts ''
            @num_of_q += 1
            @correct += 1
        else
            puts ''
            puts '  >> Not quite... /var/log/apache2/install.access.log'
            puts ''
            @num_of_q += 1
            @correct = @correct
        end

        puts " | #{@correct} | out of #{@num_of_q} questions correct".green
        puts ''

        # question 7

        prompt = TTY::Prompt.new
        answer = prompt.ask('File location of the apache error log? ... use \'install\' as the site name')

        if answer == "/var/log/apache2/install.error.log"
            puts ''
            puts '  >> Correct!'
            puts ''
            @num_of_q += 1
            @correct += 1
        else
            puts ''
            puts '  >> Not quite... /var/log/apache2/install.error.log'
            puts ''
            @num_of_q += 1
            @correct = @correct
        end

        puts " | #{@correct} | out of #{@num_of_q} questions correct".green
        puts ''        

        # question 8 

        prompt = TTY::Prompt.new
        answer = prompt.select('$time_local|v1|$remote_addr|$http_host|$status|$body_bytes_sent|$upst ream_addr|$upstream_response_time|$request_time|$request|$is_logge d_as_bot|$is_prefetch|$http_cf_ray') do |menu|
            menu.choice 'Apache log'
            menu.choice 'Nginx log'
        end

        if answer == "Nginx log"
            puts ''
            puts '  >> Correct!'
            puts ''
            @num_of_q += 1
            @correct += 1
        else
            puts ''
            puts '  >> Not quite... this is a Nginx log'
            puts ''
            @num_of_q += 1
            @correct = @correct
        end

        puts " | #{@correct} | out of #{@num_of_q} questions correct".green
        puts ''        

        # question 9

        prompt = TTY::Prompt.new

        answer = prompt.select('$remote_addr $http_host $remote_user [$time_local] $request $status $body_bytes_sent $http_referer $wpe_user_agent') do |menu|
            menu.choice 'Apache log'
            menu.choice 'Nginx log'
        end

        if answer == "Apache log"
            puts ''
            puts '  >> Correct!'
            puts ''
            @num_of_q += 1
            @correct += 1
        else
            puts ''
            puts '  >> Not quite... this is a Apache log'
            puts ''
            @num_of_q += 1
            @correct = @correct
        end

        puts " | #{@correct} | out of #{@num_of_q} questions correct".green
        puts ''
        
        # question 10

        prompt = TTY::Prompt.new
        answer = prompt.ask('Linux command to output the first 10 lines of the file called wpengine.txt')

        if answer == "head wpengine.txt"
            puts ''
            puts '  >> Correct!'
            puts ''
            @num_of_q += 1
            @correct += 1
        else
            puts ''
            puts '  >> Not quite... head wpengine.txt'
            puts ''
            @num_of_q += 1
            @correct = @correct
        end

        puts " | #{@correct} | out of #{@num_of_q} questions correct".green
        puts ''     
        
        # question 11

        prompt = TTY::Prompt.new
        answer = prompt.ask('Linux command to output the last 10 lines of wpengine.txt')

        if answer == "tail wpengine.txt"
            puts ''
            puts '  >> Correct!'
            puts ''
            @num_of_q += 1
            @correct += 1
        else
            puts ''
            puts '  >> Not quite... tail wpengine.txt'
            puts ''
            @num_of_q += 1
            @correct = @correct
        end

        puts " | #{@correct} | out of #{@num_of_q} questions correct".green
        puts ''     

        # question 12

        prompt = TTY::Prompt.new
        answer = prompt.ask('Linux command to show directory space usage in KB/MB/GB')

        if answer == "du -sh *"
            puts ''
            puts '  >> Correct!'
            puts ''
            @num_of_q += 1
            @correct += 1
        else
            puts ''
            puts '  >> Not quite... du -sh *'
            puts ''
            @num_of_q += 1
            @correct = @correct
        end

        puts " | #{@correct} | out of #{@num_of_q} questions correct".green
        puts ''   

        # question 13

        prompt = TTY::Prompt.new
        answer = prompt.ask('Linux command to show disk usage... mainly for the cluster, shows the % at which the server is loading memory')

        if answer == "df -h"
            puts ''
            puts '  >> Correct!'
            puts ''
            @num_of_q += 1
            @correct += 1
        else
            puts ''
            puts '  >> Not quite... df -h'
            puts ''
            @num_of_q += 1
            @correct = @correct
        end

        puts " | #{@correct} | out of #{@num_of_q} questions correct".green
        puts ''   
        
       
        # question 14

        prompt = TTY::Prompt.new
        answer = prompt.ask('Linux command to show how much CPU % and Memory % is being used and which processes are using them the most')

        if answer == "htop"
            puts ''
            puts '  >> Correct!'
            puts ''
            @num_of_q += 1
            @correct += 1
        else
            puts ''
            puts '  >> Not quite... htop'
            puts ''
            @num_of_q += 1
            @correct = @correct
        end

        puts " | #{@correct} | out of #{@num_of_q} questions correct".green
        puts '' 
 
        # question 15

        prompt = TTY::Prompt.new
        answer = prompt.ask('Linux command to show the status of the server throughout a specific point in time')

        if answer == "sar -q"
            puts ''
            puts '  >> Correct!'
            puts ''
            @num_of_q += 1
            @correct += 1
        else
            puts ''
            puts '  >> Not quite... sar -q'
            puts ''
            @num_of_q += 1
            @correct = @correct
        end

        puts " | #{@correct} | out of #{@num_of_q} questions correct".green
        puts '' 

        # question 16

        prompt = TTY::Prompt.new
        answer = prompt.ask('Linux command to show the number of cores currently on the server/cluster')

        if answer == "nproc"
            puts ''
            puts '  >> Correct!'
            puts ''
            @num_of_q += 1
            @correct += 1
        else
            puts ''
            puts '  >> Not quite... nproc'
            puts ''
            @num_of_q += 1
            @correct = @correct
        end

        puts " | #{@correct} | out of #{@num_of_q} questions correct".green
        puts '' 

        # question 17

        prompt = TTY::Prompt.new
        answer = prompt.ask('Linux command to find the amount of Memory on a current server and how much is being utilized')

        if answer == "free"
            puts ''
            puts '  >> Correct!'
            puts ''
            @num_of_q += 1
            @correct += 1
        else
            puts ''
            puts '  >> Not quite... free'
            puts ''
            @num_of_q += 1
            @correct = @correct
        end

        puts " | #{@correct} | out of #{@num_of_q} questions correct".green
        puts ''

        # question 18

        prompt = TTY::Prompt.new
        answer = prompt.ask('What\'s the WP-CLI command you\'d run, when reverting a site from core version 5.7 to 5.5.6?')

        if answer == "wp core update --version=5.5.6 --force"
            puts ''
            puts '  >> Correct!'
            puts ''
            @num_of_q += 1
            @correct += 1
        else
            puts ''
            puts '  >> Not quite... wp core update --version=5.5.6 --force'
            puts ''
            @num_of_q += 1
            @correct = @correct
        end

        puts " | #{@correct} | out of #{@num_of_q} questions correct".green
        puts ''

        # question 19

        prompt = TTY::Prompt.new
        answer = prompt.ask('Linux command to find all files with extention .git')

        if answer == "find -name \"*.git\""
            puts ''
            puts '  >> Correct!'
            puts ''
            @num_of_q += 1
            @correct += 1
        else
            puts ''
            puts '  >> Not quite... find -name \"*.git\"'
            puts ''
            @num_of_q += 1
            @correct = @correct
        end

        puts " | #{@correct} | out of #{@num_of_q} questions correct".green
        puts ''

        # question 20

        prompt = TTY::Prompt.new

        answer = prompt.select('/nas/config/live/installname/ is a ...') do |menu|
            menu.choice 'Absolute Path'
            menu.choice 'Relative Path'
        end

        if answer == "Absolute Path"
            puts ''
            puts '  >> Correct! Referring to everything based on the root directory and always starting with a /'
            puts ''
            @num_of_q += 1
            @correct += 1
        else
            puts ''
            puts '  >> Not quite... Absolute Path'
            puts ''
            @num_of_q += 1
            @correct = @correct
        end

        puts " | #{@correct} | out of #{@num_of_q} questions correct".green
        puts ''

        # question 21

        prompt = TTY::Prompt.new

        answer = prompt.select('_wpeprivate/ is a ...') do |menu|
            menu.choice 'Absolute Path'
            menu.choice 'Relative Path'
        end

        if answer == "Relative Path"
            puts ''
            puts '  >> Correct! Command on what you want to operate on relative to where you are. Interacts with current directory.'
            puts ''
            @num_of_q += 1
            @correct += 1
        else
            puts ''
            puts '  >> Not quite... Relative Path'
            puts ''
            @num_of_q += 1
            @correct = @correct
        end

        puts " | #{@correct} | out of #{@num_of_q} questions correct".green
        puts ''

        # question 22

        prompt = TTY::Prompt.new
        answer = prompt.ask('Cut command to find top ten page requests, requested by googlebot from 10-11 am utc: ... use \'install\' as the name of the envrionment + the year 2021') 
        
        if answer == "grep \'2021:10\' /var/log/nginx/install.apachestyle.log | grep -i \'googlebot\' | cut -d\' \' -f2 | sort | uniq -c | sort -nr | head"
            puts ''
            puts '  >> Correct!'
            puts ''
            @num_of_q += 1
            @correct += 1
        else
            puts ''
            puts '  >> Not quite... grep \'2021:10\' /var/log/nginx/install.apachestyle.log | grep -i \'googlebot\' | cut -d\' \' -f2 | sort | uniq -c | sort -nr | head'
            puts ''
            @num_of_q += 1
            @correct = @correct
        end

        puts " | #{@correct} | out of #{@num_of_q} questions correct".green
        puts ''

        # question 23

        prompt = TTY::Prompt.new
        answer = prompt.ask('Cut command to find Top Ten IP’s that hit today ... use the \'install\' as the name of the environment')

        if answer == "cut -d\" \" -f1 /var/log/nginx/install.apachestyle.log | sort | uniq -c | sort -rn | head"
            puts ''
            puts '  >> Correct!'
            puts ''
            @num_of_q += 1
            @correct += 1
        else
            puts ''
            puts '  >> Not quite... cut -d\' \' -f1 /var/log/nginx/install.apachestyle.log | sort | uniq -c | sort -rn | head'
            puts ''
            @num_of_q += 1
            @correct = @correct
        end

        puts " | #{@correct} | out of #{@num_of_q} questions correct".green
        puts ''
        
        # question 24

        prompt = TTY::Prompt.new
        answer = prompt.ask('Top ten pages that Googlebot hit 2 days ago ... use the \'install\' as the name of the environment')

        if answer == "zgrep \'Googlebot\' /var/log/nginx/install.apachestyle.log.2.gz | cut -d\' \' -f7 | sort | uniq -c | sort -rn | head"
            puts ''
            puts '  >> Correct!'
            puts ''
            @num_of_q += 1
            @correct += 1
        else
            puts ''
            puts '  >> Not quite... zgrep \'Googlebot\' /var/log/nginx/install.apachestyle.log.2.gz | cut -d\' \' -f7 | sort | uniq -c | sort -rn | head'
            puts ''
            @num_of_q += 1
            @correct = @correct
        end

        puts " | #{@correct} | out of #{@num_of_q} questions correct".green
        puts ''

        # question 25

        prompt = TTY::Prompt.new
        answer = prompt.ask('Top ten pages that Googlebot has hit today ... use the \'install\' as the name of the environment')

        if answer == "grep \'Googlebot\' /var/log/nginx/install.apachestyle.log | cut -d\' \' -f7 | sort | uniq -c | sort -rn | head"
            puts ''
            puts '  >> Correct!'
            puts ''
            @num_of_q += 1
            @correct += 1
        else
            puts ''
            puts '  >> Not quite... grep \'Googlebot\' /var/log/nginx/install.apachestyle.log | cut -d\' \' -f7 | sort | uniq -c | sort -rn | head'
            puts ''
            @num_of_q += 1
            @correct = @correct
        end

        puts " | #{@correct} | out of #{@num_of_q} questions correct".green
        puts ''

        # question 26

        prompt = TTY::Prompt.new

        answer = prompt.select('Which type of log will show the user agent?') do |menu|
            menu.choice 'Nginx'
            menu.choice 'Apachestyle Nginx'
            menu.choice 'Apache'
        end

        if answer == "Apachestyle Nginx"
            puts ''
            puts '  >> Correct!'
            puts ''
            @num_of_q += 1
            @correct += 1
        else
            puts ''
            puts '  >> Not quite... Apachestyle Nginx'
            puts ''
            @num_of_q += 1
            @correct = @correct
        end

        puts " | #{@correct} | out of #{@num_of_q} questions correct".green
        puts ''
        
        # question 27
        
        prompt = TTY::Prompt.new
        answer = prompt.ask('Top Ten pages that had a 504 response code')

        if answer == "grep \"504\" /var/log/nginx/install.apachestyle.log | cut -d\' \' -f7 | sort | uniq -c | sort -rn | head"
            puts ''
            puts '  >> Correct!'
            puts ''
            @num_of_q += 1
            @correct += 1
        else
            puts ''
            puts '  >> Not quite... grep \"504\" /var/log/nginx/install.apachestyle.log | cut -d\' \' -f7 | sort | uniq -c | sort -rn | head'
            puts ''
            @num_of_q += 1
            @correct = @correct
        end

        puts " | #{@correct} | out of #{@num_of_q} questions correct".green
        puts ''
    end

    self.questions

    def self.fireworks
        system("bash fireworks.sh")
    end

    self.fireworks

end



