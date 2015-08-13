#!/usr/bin/ruby

# this is an example to demonstrate that ruby can use gnuplot to make plots and to show the syntax
# must have require "gnuplot" below, installed gnuplot through pacman, and gotten the gnuplot gem with $ gem install gnuplot
# need the gem so that gnuplot and ruby can intercat with one another

require "gnuplot"

x = (0..10).collect { |vi| vi.to_f }
y = x.collect { |vi| vi ** 2 }

Gnuplot.open do |gp|
	Gnuplot::Plot.new(gp) do |plot|
		plot.xrange "[0:10]"
		plot.title  "Simple Data Set Example"
		plot.xlabel "x"
		plot.ylabel "y=x^2"

		plot.data = [
			Gnuplot::DataSet.new([x, y]) { |ds|
				ds.with = "lines"
				ds.notitle
			}
		]
	end
end

# Gnuplot.open do |gp|
# 	Gnuplot::Plot.new( gp ) do |plot|
# 		plot.xrange "[-10:10]"
# 		plot.title "Sin Wave Example"
# 		plot.ylabel "sin(x)"
# 		plot.xlabel "x"
# 		plot.data << Gnuplot::DataSet.new( "sin(x)" ) do |ds|
# 			ds.with = "lines"
# 			ds.linewidth = 4
# 		end
# 	end
# end

# Gnuplot.open do |gp|
# 	Gnuplot::Plot.new( gp ) do |plot|
# 		plot.xrange "[-10:10]"
# 		plot.title "Example"
# 		plot.ylabel "y(x)"
# 		plot.xlabel "x"
# 		plot.data << Gnuplot::DataSet.new( "sin(x)/x" ) do |ds|
# 			ds.with = "linespoints"
# 			ds.linewidth = 1
# 		end
# 	end
# end

# arrays x and y can be defined before gnuplot is instantiated
# have some arrays full of data generated in your program, then
# use the gnuplot block to plot it
# gp, plot, vi, and ds are all interator counters that can be 
# whatever you want, don't have to be gp or plot, etc

# x = (0..10).collect { |vi| vi.to_f }
# y = x.collect { |vi| vi ** 2 }

# Gnuplot.open do |gp|
# 	Gnuplot::Plot.new ( gp ) do |plot|
# 		plot.title "Array Plot Example"
# 		plot.xlabel "x"
# 		plot.ylabel "x^2"
		
# 		plot.data << Gnuplot::DataSet.new( [x, y] ) do |ds|
# 			ds.with = "linespoints"
# 			ds.notitle
# 		end
# 	end
# end

# multiple data sets and write to a file instead of making
# a gnuplot

# x = (0..10).collect { |vi| vi.to_f }
# y = x.collect { |vi| vi ** 2 }

# File.open( "gnuplot.dat", "w" ) do |pp|
# 	Gnuplot::Plot.new( pp ) do |plot|
# 		plot.xrange "[-10:10]"
# 		plot.title  "Sin Wave Example"
# 		plot.ylabel "x"
# 		plot.xlabel "sin(x)"

# 		plot.data = [
# 			Gnuplot::DataSet.new( "sin(x)" ) { |ds|
# 				ds.with = "lines"
# 				ds.title = "String Function"
# 				ds.linewidth = 1
# 			},
# 			Gnuplot::DataSet.new( [x, y] ) { |ds|
# 				ds.with = "linespoints"
# 				ds.title = "Array Data"
# 			}
# 		]
# 	end
# end