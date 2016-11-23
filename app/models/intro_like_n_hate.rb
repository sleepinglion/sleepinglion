# encoding: utf-8

require 'carrierwave/orm/activerecord'

class IntroLikeNHate < ActiveRecord::Base
  validates_presence_of :title
  belongs_to :intro, :autosave=>true
  accepts_nested_attributes_for :intro, :allow_destroy => true
end
