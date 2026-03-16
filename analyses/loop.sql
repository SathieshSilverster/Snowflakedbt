{% set col=['NIGHTS_BOOKED','BOOKING_AMOUNT','BOOKING_ID'] %}

Select 
{% for i in col %}
    {{ i }}{% if not loop.last %},{% endif %}
{% endfor %}
from {{ ref('bronze_bookings') }}