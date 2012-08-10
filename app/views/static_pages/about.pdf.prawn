logo = Rails.root.join('public','logo2.png')

prawn_document(:page_size => 'A4', :left_margin => 26, :top_margin => 10) do |pdf|

#	pdf.bounding_box([0, pdf.cursor], :width => 550, :height => 150) do
#		pdf.stroke_bounds
#		pdf.image logo, :position => :left, :scale => 0.2
#		pdf.text "Image aligned to the left.", :position => :center
#	end
	
	#cell_width = 200
	row_height = 100
	
	pieces = [[logo, "BiotestMed", logo]]
	
	pieces.each_with_index do |p,i|
		pdf.bounding_box [0, pdf.cursor], :height => row_height, :width => 530 do
		
			pdf.stroke_bounds
				#pdf.stroke do
				#  pdf.line pdf.bounds.top_left,    pdf.bounds.top_right
				#  pdf.line pdf.bounds.bottom_left, pdf.bounds.bottom_right
				#end
			pdf.move_down 5 # a bit of padding
			cursor = pdf.cursor # keep current cursor value for all cells in this row
		
			cell_width = 150
			j = 0
			pdf.bounding_box [cell_width*0 + 1, cursor], :height => row_height-10, :width => 100 do
				pdf.stroke_bounds
				pdf.image p[j], :position => :center, :scale => 0.2
				j += 1
			end
		
			pdf.bounding_box [cell_width*j - 20, cursor], :height => row_height-10, :width => 250 do
				pdf.stroke_bounds
				#pdf.text p[j], :align => :center, :size => 10 unless p[j].blank?
				pdf.draw_text p[j], :at => [50,50], :size => 16
				j += 1
			end
		
			pdf.bounding_box [530 - 101, cursor], :height => row_height-10, :width => 100 do
				pdf.stroke_bounds
				pdf.image p[j], :position => :center, :scale => 0.2
				j += 1
			end
		
		end
		
	end


#	pdf.define_grid(:columns => 3, :rows => 1)
#	  pdf.grid.rows.times do |i|
#	    pdf.grid.columns.times do |j|
#	      b = pdf.grid(i,j)
#	      pdf.bounding_box b.top_left, :width => b.width, :height => b.height do
#	        pdf.text b.name
#	        pdf.stroke do
#	          pdf.rectangle(pdf.bounds.top_left, b.width, b.height)
#	        end
#	      end
#	    end
#	  end
	
	
end	# end prawn_document
