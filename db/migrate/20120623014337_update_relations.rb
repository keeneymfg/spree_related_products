class UpdateRelations < ActiveRecord::Migration
  def up
    Spree::Relation.where(:relatable_type => 'Variant').update_all(:relatable_type => 'Spree::Variant')
    Spree::Relation.where(:related_to_type => 'Variant').update_all(:related_to_type => 'Spree::Variant')
  end

  def down
     Spree::Relation.where(:relatable_type => 'Spree::Variant').update_all(:relatable_type => 'Variant')
    Spree::Relation.where(:related_to_type => 'Spree::Variant').update_all(:related_to_type => 'Variant')
  end
end
