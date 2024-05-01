Deface::Override.new(virtual_path: 'spree/admin/orders/index',
  name: 'add_paid_to_orders_admin_index',
  # remove: ".nav-item:first")
  insert_after: ".nav-item:first",
  text: "<li class=\"nav-item\"><%= link_to 'Paid', params.merge({q: {payment_state_eq: :paid, completed_at_not_null: 1}}).permit!,
  class: \"nav-link \#{'active' if params[:q][:payment_state_eq] == 'paid'}\"%></li>")