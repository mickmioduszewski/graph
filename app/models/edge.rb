class Edge < ActiveRecord::Base
  belongs_to :source, :class_name => "Node", :foreign_key => "source_id"
  belongs_to :sink, :class_name => "Node", :foreign_key => "sink_id"
  belongs_to :edge_type
  
  validates_presence_of :source_id
  validates_presence_of :sink_id
  validates_presence_of :edge_type_id
  def source_name
    source.name if source
  end
  
  def source_name=(name)
    self.source = Node.find_or_create_by_name(name) unless name.blank?
  end
  
  def sink_name
    sink.name if sink
  end
 
  def sink_name=(name)
    self.sink = Node.find_or_create_by_name(name) unless name.blank?
  end 

  def edge_type_name
    edge_type.name if edge_type
  end
 
  def edge_type_name=(name)
    self.edge_type = Edge_type.find_by_name(name) unless name.blank?
  end
  
end
