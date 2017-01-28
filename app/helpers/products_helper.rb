module ProductsHelper
  def cache_key_for_products
    count          = Product.count
    max_updated_at = Product.maximum(:updated_at).try(:utc).try(:to_s, :number)
    "products/#{params[:q] || "all"}-#{count}-#{max_updated_at}#{signed_in? && current_user.admin? ? "-admin" : "normal"}"
  end
end
