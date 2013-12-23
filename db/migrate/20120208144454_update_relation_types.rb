class UpdateRelationTypes < ActiveRecord::Migration
  def up
    Spree::RelationType.where(:applies_to => 'Variant').update_all(:applies_to => 'Spree::Variant')
  end

  def down
    Spree::RelationType.where(:applies_to => 'Spree::Variant').update_all(:applies_to => 'Variant')
  end
end
