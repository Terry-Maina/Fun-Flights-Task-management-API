require_relative './models_module'

class Project < ActiveRecord::Base
    extend InheritMethods::ClassMethods #extend is for class methods
    has_many :boards, dependent: :destroy
    has_many :tasks, through: :boards
