#'
#'@param ... arguments to be passed to read.csv
#'@examples
#'aspirin<-downloadDataCarlinLouisGeneric(url="https://www.counterpointstat.com/uploads/1/1/9/3/119383887/aspirin_data.txt",
#'variablenames=c("patient","X","Y"),
#'sep = "\t",header=FALSE)
ddCLGeneric<-function(url,read.function=read.csv,variablenames=NULL,...){  
  #temp_dir<-tempdir()
  #filename<-basename(url)
  #destfile<-file.path(temp_dir,filename)
  #download.file(url=url,destfile=destfile)
  toto<-read.function(url,...)
  if(!is.null(variablenames)){names(toto)<-variablenames}
  toto}


#'
#'@examples
#'aspirin<-ddCL_aspirin()
ddCL_aspirin<-function(){  
  ddCLGeneric(url="https://www.counterpointstat.com/uploads/1/1/9/3/119383887/aspirin_data.txt",
                                 variablenames=c("patient","X","Y"),
                                 sep = "\t",header=FALSE)}

#'
#'@examples
#'land<-ddCL_land()
ddCL_land<-function(){  
  land<-ddCLGeneric(url="https://www.counterpointstat.com/uploads/1/1/9/3/119383887/land_data.txt",
              sep = " ",header=TRUE)
  cbind(data.frame(property=1:nrow(land)),land)
  }
#'
#'@examples
#'puro<-ddCL_puro()
ddCL_puro<-function(){  
  puro<-read.fwf("https://www.counterpointstat.com/uploads/1/1/9/3/119383887/puro_data.txt",widths=c(2,13,20))
  names(puro)<-c("Case", "x","y")
  puro}
