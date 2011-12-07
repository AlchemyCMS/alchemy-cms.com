class NamespaceEssenceTypes < ActiveRecord::Migration

	def self.up
		Alchemy::Content.all.select{ |c| c.essence_type =~ /^Essence/ }.each do |c|
			c.update_attribute(:essence_type, c.essence_type.gsub(/^Essence/, 'Alchemy::Essence'))
		end
	end
	
	def self.down
		Alchemy::Content.all.select{ |c| c.essence_type =~ /^Alchemy::/ }.each do |c|
			c.update_attribute(:essence_type, c.essence_type.gsub(/^Alchemy::/, ''))
		end
	end
	
end
