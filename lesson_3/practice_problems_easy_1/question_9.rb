flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

(flintstones.to_a.select! {|k, v| k == "Barney"}).flatten

