require "sensi/version"
require 'sensi/hash_to_object'

module Sensi

	class PollResponse < HashToObject

		def initialize(json)
			convert(json)
		end

		def message_id
			self.c
		end

		def groups_token
			self.g
		end

		def timed_out?
			respond_to?(:t)
		end
  	end

end