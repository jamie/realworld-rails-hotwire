# Pull some changes from https://github.com/rails/rails/pull/45439
module Rails
  module Command
    class TestCommand < Base # :nodoc:
      def perform(*)
        $LOAD_PATH << Rails::Command.root.join("test").to_s

        Rails::TestUnit::Runner.parse_options(args)
        Rails::TestUnit::Runner.run(args)
      end

      # Define Thor tasks to avoid going through Rake and booting twice when using bin/rails test:*

      [:models, :helpers, :channels, :controllers, :mailers, :integration, :jobs, :mailboxes].each do |name|
        define_method(name) do |*|
          args.prepend("test/#{name}")
          perform
        end
      end

      desc "test:all", "Runs all tests, including system tests", hide: true
      def all(*)
        args.prepend("test/**/*_test.rb")
        perform
      end

      def system(*)
        args.prepend("test/system")
        perform
      end

      def generators(*)
        args.prepend("test/lib/generators")
        perform
      end
    end
  end
end
