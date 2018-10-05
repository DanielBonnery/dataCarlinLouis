
#'
#'@param ... arguments to be passed to read.csv
#'@examples
#'aspirin<-
downloadDataCarlinLouisGeneric<-function(url,variablenames=NULL,...){  
  temp_dir<-tempdir()
  filename<-basename(url)
  destfile<-file.path(temp_dir,filename)
  download.file(url=url,destfile=destfile)
  toto<-read.csv(destfile)
  if(!is.null(variablenames)){names(toto)<-variable.names)
  }



downloadDataCarlinLouis_aspirin<-function(){  
  temp_dir<-tempdir()
  url="https://www.counterpointstat.com/uploads/1/1/9/3/119383887/aspirin_data.txt"
  filename<-basename(url)
  destfile<-file.path(temp_dir,filename)
  download.file(url=url,destfile=destfile)
  aspirin<-read.csv(destfile,sep = "\t",header=FALSE)
  names(aspirin)<-c("patient","X","Y")
  aspirin}
