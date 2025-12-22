select
    order_id,
    user_name as user_id_y,
    order_status as order_status_y,
    DATETIME(order_date, "Europe/Paris") AS _xorder_created_at,
    DATETIME(order_approved_date, "Europe/Paris") AS _xorder_approved_at,
    DATETIME(pickup_date, "Europe/Paris") AS _xpicked_up_at,
    DATETIME(delivered_date, "Europe/Paris") AS _xdelivered_at,
    DATETIME(estimated_time_delivery, "Europe/Paris") AS _xestimated_time_delivery
from {{ source('sales_database', 'order') }}