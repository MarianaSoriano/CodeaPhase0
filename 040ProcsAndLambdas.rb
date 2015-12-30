def batman_ironman_proc
  victor = Proc.new { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_proc

def batman_ironman_lambda
  victor = lambda { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_lambda

odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]
ints = odds_n_ends.select {|n| n.is_a? Integer}

ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]
under_100 = Proc.new {|n| n < 100}
youngsters = ages.select(&under_100).sort!
p youngsters


crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}
first_half = lambda {|key, value| value < "M"}
a_to_m = crew.select(&first_half)
