
class Task

	def self.para
	  puts "Enter paragraph less than 1000 characters."
	  paragraph = gets
		if (paragraph.length > 0 && paragraph.length <= 1000)
			f_paragraph = paragraph.downcase.gsub(/[^a-z0-9\s]/i, '')
			f_paragraph = f_paragraph.split			
			f_paragraph = f_paragraph
			else
			puts "Please enter paragraph characters lessthan 1000."
	        Task.para
		end
		puts "........................................."
	    Task.banne(f_paragraph)
	end

	def self.banne(n)
		puts "Enter banned words by giving space."
         
		banned = gets
		banned = banned.split
	        banned.each do |word|
		        if word.length > 10
		          puts "Enter banned words lessthan 10 or 10 characters"
		        Task.banne(n)
			abort	
		        end   
            end 	
          Task.ban(n,banned)
	end

    def self.ban(n,banned)
		if (banned.length > 0 && banned.length <= 100)
			banned = banned
			else
			puts "Please enter banned words lessthan 100."
			Task.ban(n,banned)
			abort
		end
		puts "........................................."	
	   Task.execute(n,banned)

    end	
	def self.execute(f_paragraph,banned)
		f_uni_para = f_paragraph.uniq

		banned.each do |ban|
		count = 0
			f_paragraph.each do |v|

					if ban == v
					  count = count + 1
			        
					end
			end

		puts " #{ban} occurs #{count} times, but it is a banned word."
		end

		f_uni_para = f_uni_para - banned

		u_count = 0
		u_word = ""
		f_uni_para.each do |u| 

		word = ""
		count = 0
			f_paragraph.each do |v|

				if u == v
				  count = count + 1
		        
				end
		      
		          (count > u_count) ? u_count = count  : count = count ;
		          (count >= u_count) ? u_word = "#{u}"  : word = "#{u}" ;

			end

		end

		puts "#{u_word} occured #{u_count} times, so it is the most frequent non-banned word in the paragraph."

	end

Task.para

end
