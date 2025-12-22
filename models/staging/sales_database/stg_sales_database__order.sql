select
    order_id,
    user_name as _xuser_id,
    order_status as _xorder_status,
    DATETIME(order_date, "Europe/Paris") AS _xorder_created_at,
    DATETIME(order_approved_date, "Europe/Paris") AS _xorder_approved_at,
    DATETIME(pickup_date, "Europe/Paris") AS _xpicked_up_at,
    DATETIME(delivered_date, "Europe/Paris") AS _xdelivered_at,
    DATETIME(estimated_time_delivery, "Europe/Paris") AS _xestimated_time_delivery
from {{ source('sales_database', 'order') }}