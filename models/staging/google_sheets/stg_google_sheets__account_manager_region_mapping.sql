select
    account_manager,
    state
from {{ source('google_sheets', 'data_mapping') }}
