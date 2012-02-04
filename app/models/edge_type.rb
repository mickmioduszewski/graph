class EdgeType < ActiveRecord::Base
  has_many :edges
  validates_presence_of :name
  validates_presence_of :source_type
  validates_presence_of :sink_type
end
