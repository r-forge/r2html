".onLoad" <- function(lib,pkg) {
	
	# Copy all the content of "output" directory to tempdir()
	output <- system.file( "output", package = "R2HTML", lib.loc = lib )
	lapply( list.files( output, full.names = TRUE ), function(x){
		file.copy( x, to = tempdir(), recursive = TRUE )
	} )
	
	options(R2HTML.CSSdir=file.path(lib,pkg,"output"))
	options(R2HTML.sortableDF=FALSE)
	options(R2HTML.format.digits=2)
	options(R2HTML.format.nsmall=0)
	options(R2HTML.format.big.mark="")
	options(R2HTML.format.big.interval=3)
	options(R2HTML.format.decimal.mark=Sys.localeconv()[["decimal_point"]])
	options(R2HTML.grid.first=TRUE)
	options(R2HTML.grid.stuffbasepath="./")

}

