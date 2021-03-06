class ShippingEasy::Resources::Order < ShippingEasy::Resources::Base
  command :create, http_method: :post do |args|
    "/stores/#{args.delete(:store_api_key)}/orders"
  end

  command :find do |args|
    if args.has_key?(:store_api_key)
      "/stores/#{args.delete(:store_api_key)}/orders/#{args.delete(:id)}"
    else
      "/orders/#{args.delete(:id)}"
    end
  end

  command :find_all do |args|
    if args.has_key?(:store_api_key)
      "/stores/#{args.delete(:store_api_key)}/orders"
    else
      "/orders"
    end
  end
end
