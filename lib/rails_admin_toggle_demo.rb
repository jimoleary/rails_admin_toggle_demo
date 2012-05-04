require "rails_admin_toggle_demo/engine"

module RailsAdminToggleDemo
end

require 'rails_admin/config/actions'

module RailsAdmin
  module Config
    module Actions
      class ToggleDemo < Base
        RailsAdmin::Config::Actions.register(self)
        
        register_instance_option :member do
          true
        end

        register_instance_option :visible? do
          bindings[:object].is_a?(Demo)
        end

        register_instance_option :controller do
          Proc.new do
            @object.toggle!
            flash[:notice] = "Demo #{@object.active? ? "Activated" : "Deactivated"}"
            redirect_to back_or_index
          end
        end


        register_instance_option :link_icon do
          bindings[:object].active? ? "icon-off" : "icon-ok"
        end

      end
    end
  end
end

