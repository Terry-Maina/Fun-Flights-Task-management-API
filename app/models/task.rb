require_relative './models_module'

class Task < ActiveRecord::Base
    extend InheritMethods::ClassMethods #extend is for class methods

    belongs_to :board
    has_one :project, through: :board

    def self.render_all_formatted_for_frontend
        self.all.map do |task|
            