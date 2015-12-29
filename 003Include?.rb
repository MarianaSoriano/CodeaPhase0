def shipping(address)
    if address.include?("México")
      "Order received"# Don't place 'puts' here
    else
       "We just ship orders to Mexico"
    end
end
puts shipping('Av. Sonora 84-a Colonia Roma Norte, México D.F., México') + " thanks" #'puts' or 'print' or 'p' goes here