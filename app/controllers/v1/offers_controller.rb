class V1::OffersController < ApplicationController
  def index
    @offers = Offer.where(nil)
    @offers = @offers.filter_by_university(params[:university]) if params[:university].present?
    @offers = @offers.filter_by_course(params[:course]) if params[:course].present?
    @offers = @offers.filter_by_kind(params[:kind]) if params[:kind].present?
    @offers = @offers.filter_by_level(params[:level]) if params[:level].present?
    @offers = @offers.filter_by_shift(params[:shift]) if params[:shift].present?
    @offers = @offers.filter_by_city(params[:city]) if params[:city].present?

    @order = ordering_params(params)
    if !@order.nil? and @order.include?("price_with_discount")
      @offers = @offers.sort_by_price_with_discount(@order["price_with_discount"])
    end

    render json: @offers, each_serializer: OfferSerializer, status: :ok
  end

  private

  def ordering_params(params)
    ordering = {}
    if params[:sort]
      sort_order = { '+' => :asc, '-' => :desc }

      sorted_params = params[:sort].split(',')
      sorted_params.each do |attr|
        sort_sign = (attr =~ /\A[+-]/) ? attr.slice!(0) : '+'
        model = controller_name.classify.constantize
        if model.attribute_names.include?(attr)
          ordering[attr] = sort_order[sort_sign]
        end
      end
    end
    return ordering
  end

end
