require_relative './models_module'

class Board < ActiveRecord::Base
    extend InheritMethods::ClassMethods #extend is for class methods

    belongs_to :project 
    has_many :tasks, dependent: :destroy