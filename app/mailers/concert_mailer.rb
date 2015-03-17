class ConcertMailer < ApplicationMailer

	def mass_email(concert, message)
		@concert = concert
		@message = message
		@emails = concert.users.all.map {|user| user.email}
		@emails.push(concert.venue.user.email)
		mail(to: @emails, subject: "Update from concert #{concert.artist} in #{concert.city}")
	end

	def concert_funded(concert)
		@concert = concert
		@emails = concert.users.all.map {|user| user.email}
		@emails.push(concert.venue.user.email)
		mail(to: @emails, subject: "Congratulations #{concert.artist} in #{concert.city} is funded.")
	end

	def concert_failed(concert)
		@concert = concert
		@emails = concert.users.all.map {|user| user.email}
		@emails.push(concert.venue.user.email)
		mail(to: @emails, subject: "#{concert.artist} in #{concert.city} has failed to reach enough support in time.")
	end

	def purchase_email(concert, user)
		@concert = concert
		@user = user.email
		mail(to: @user, subject: "#{concert.artist} in #{concert.city} purchase confirmation" )
	end

	def new_supporter_email(request, supporter)
		@request = request
		@supporter = supporter.email
		mail(to: @supporter, subject: "#{request.artist} in #{request.city} support confirmation" )
	end


end

