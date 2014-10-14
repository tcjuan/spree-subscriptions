module SpreeSubscriptions
  class Engine < Rails::Engine
    isolate_namespace Spree

    engine_name 'spree_subscriptions'

    config.autoload_paths += %W(#{config.root}/lib)

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end

    def self.activate
     # Dir.glob(File.join(File.dirname(__FILE__), '../../../app/**/*_decorator*.rb')) do |c|
     #   Rails.configuration.cache_classes ? require(c) : load(c)
     # end
      
       ['app', 'lib'].each do |dir|
        Dir.glob(File.join(File.dirname(__FILE__), "../../#{dir}/**/*_decorator*.rb")) do |c|
          Rails.application.config.cache_classes ? require(c) : load(c)
        end
      end
      
    end

    config.to_prepare &method(:activate).to_proc

    initializer "spree_subscriptions.preferences", :after => "spree.environment" do |app|
      module Spree::Subscriptions
        Config = Spree::SubscriptionsConfiguration.new
      end
    end

    initializer "spree_subscriptions.environment", before: :load_config_initializers do |app|
      [:subscribable, :issues_attributes].each { |attrib| Spree::PermittedAttributes.product_attributes << attrib }
      [:issues_number].each { |attrib| Spree::PermittedAttributes.variant_attributes << attrib }
    end
  end
end
