require 'barby/outputter/prawn_outputter'
require 'barby/barcode/code_39'
require 'barby'

logo = Rails.root.join('public','logo.png')

prawn_document do |pdf|
  	pdf.text "Look! I'm a PDF"
  	pdf.move_down(5)

	pdf.text "Center table:"
	data = [["1", "2"], ["3", "4"]]
  	pdf.table(data, :position => :center)
 	pdf.move_down(20)

	barcode = Barby::Code39.new('1282504')
	barcode.annotate_pdf(pdf, :x => 400, :y => 50, :height => 10)

end
