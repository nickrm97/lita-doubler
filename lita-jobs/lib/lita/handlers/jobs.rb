module Lita
  module Handlers
    class Jobs < Handler
      # insert handler code here

      def respond_with_melbourne(response)
        response.reply_privately("melbourne jobs here!")
      end

      route(
        /^jobs melbourne\s+(.+)/, :respond_with_melbourne,
        command: true,
        help: { 'jobs melbourne' => 'prints all open job opportunities in melbourne' }
        )
      Lita.register_handler(self)
    end
  end
end
