class Order < ApplicationRecord
  belongs_to :order_status
  has_many :order_contents
  belongs_to :customer
  after_initialize :def_values

  def def_values
    logger.warn("DEFVALUES DEF VALUES")
    @orderstatus = OrderStatus.find_by(status: 'Placed')
    logger.warn(@orderstatus)

    self.order_status ||= @orderstatus
  end

end
