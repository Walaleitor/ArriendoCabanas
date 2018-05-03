json.reservations(@reservations) do |reservation|
  json.start reservation.start_date
  json.end reservation.end_date
  json.title reservation.customer.first_name + " "  + reservation.customer.last_name

end