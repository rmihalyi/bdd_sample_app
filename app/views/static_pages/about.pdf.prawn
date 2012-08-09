logo = Rails.root.join('public','logo2.png')

prawn_document(:page_size => 'A4') do |pdf|

	pdf.bounding_box([0, pdf.cursor], :width => 550, :height => 150) do
		pdf.stroke_bounds
		pdf.image logo, :position => :left, :scale => 0.2
		pdf.text "Image aligned to the left.", :position => :center

	end
	
pdf.start_new_page	
	
	cell_width = 200
	row_height = 160
	
	pieces = [[logo, "text", "texst"]]
	
	pieces.each_with_index do |p,i|
	  pdf.bounding_box [0, pdf.cursor], :height => row_height, :width => cell_width do
		pdf.stroke_bounds
		#pdf.stroke do
		#  pdf.line pdf.bounds.top_left,    pdf.bounds.top_right
		#  pdf.line pdf.bounds.bottom_left, pdf.bounds.bottom_right
		#end
		pdf.move_down 5 # a bit of padding
		cursor = pdf.cursor # keep current cursor value for all cells in this row
		p.each_with_index do |v, j|
		  pdf.bounding_box [cell_width*j, cursor], :height => row_height, :width => cell_width do
		    if j == 0 # handle image column
		      # might want logic here to handle empty/nil images
		      pdf.image open(v), :scale => 0.4
		    else
		      pdf.text v, :size => 10 unless v.blank?
		    end
		  end
		end
	end

end

pdf.start_new_page
	
	pdf.define_grid(:columns => 3, :rows => 1)
	 
	  pdf.grid.rows.times do |i|
	    pdf.grid.columns.times do |j|
	      b = pdf.grid(i,j)
	      pdf.bounding_box b.top_left, :width => b.width, :height => b.height do
	        pdf.text b.name
	        pdf.stroke do
	          pdf.rectangle(pdf.bounds.top_left, b.width, b.height)
	        end
	      end
	    end
	  end
	
	
end	# end prawn_document
