module SupportMethods
  def setup
    @controller = Class.new do
      attr_reader :url_for_options
      def url_for(options, *parameters_for_method_reference)
        @url_for_options = options
        "http://www.example.com"
      end

      def request;  @request  ||= ActionController::TestRequest.new;  end
      def response; @response ||= ActionController::TestResponse.new; end
    end
    @controller = @controller.new
    @article = OpenStruct.new(:body => nil)
  end

  def request
    @controller.request
  end

  def controller
    setup
  end

  def config
    Class.new do
      class << self
        def perform_caching
          true
        end

        def asset_path
          @asset_path
        end

        def assets_dir
          ""
        end

        def relative_url_root
          nil
        end

        def asset_host
          nil
        end
      end

    end
  end
end
