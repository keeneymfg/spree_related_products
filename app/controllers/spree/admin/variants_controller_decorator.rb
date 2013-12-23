Spree::Admin::VariantsController.class_eval do
  def related
    load_resource
    @relation_types = Spree::Variant.relation_types
  end
end
