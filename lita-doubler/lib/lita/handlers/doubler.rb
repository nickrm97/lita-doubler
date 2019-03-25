module Lita
  module Handlers
    class Doubler < Handler
     
      def double_number(n)
        n + n
      end

      # What is this doing ?
      def respond_with_double(response)
        # Read up on the Ruby MatchData class for more options n = response.match_data.captures.first
        n = Integer(n)
        response.reply_privately "#{n} + #{n} = #{double_number n}"
      end

      # Can a route just sit here? How does this work?
      route(
        /^double\s+(\d+)$/i, :respond_with_double,
        command: true,
        help: { 'double N' => 'prints N + N' }
        )
      Lita.register_handler(self)
    end
  end
end
