proposal<-"PriorGen:  Interactive Generation of Prior Distributions"
proposal.file<-"isc-proposal.Rmd"
author<-c("Matthew Denwood","Paolo Eusebi","Polychronis Kostoulas")

for(f in list.files('proposal')){
  print(f)
  tools::showNonASCIIfile(file.path('proposal',f))
  print("")
}

rmarkdown::render(proposal.file, output_format="html_document",
                  output_dir="out", quiet=TRUE)
rmarkdown::render(proposal.file, output_format="pdf_document",
                  output_dir="out", quiet=TRUE)
