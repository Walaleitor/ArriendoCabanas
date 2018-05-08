reservations = @cabin.reservations.all
json.array!(reservations) do |reservation|
  json.start reservation.start_date
  json.end reservation.end_date
  json.title reservation.customer.first_name + " "  + reservation.customer.last_name
  json.url reservation_url(reservation, format: :html)

end