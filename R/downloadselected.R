#'
#'@param ... arguments to be passed to read.csv
#'@examples
#'aspirin<-downloadDataCarlinLouisGeneric(url="https://www.counterpointstat.com/uploads/1/1/9/3/119383887/aspirin_data.txt",
#'variablenames=c("patient","X","Y"),
#'sep = "\t",header=FALSE)
ddCLGeneric<-function(url,variablenames=NULL,...){  
  temp_dir<-tempdir()
  filename<-basename(url)
  destfile<-file.path(temp_dir,filename)
  download.file(url=url,destfile=destfile)
  toto<-read.csv(destfile,...)
  if(!is.null(variablenames)){names(toto)<-variablenames}
  toto}


#'
#'@examples
#'aspirin<-ddCL_aspirin()
ddCL_aspirin<-function(){  
  ddCLGeneric(url="https://www.counterpointstat.com/uploads/1/1/9/3/119383887/aspirin_data.txt",
                                 variablenames=c("patient","X","Y"),
                                 sep = "\t",header=FALSE)}


