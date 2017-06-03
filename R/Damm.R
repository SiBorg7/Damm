#' Get Damm check digit
#' 
#' Get Damm check digit
#' 
#' @param x Number that you want the check digit for.
#' 
#' @export
#' @examples
#' x <- 12345
#' DammDigit(x)
#' # so we need to add 9 to the end of the number
#' x <- 123459
#' DammDigit(x)
#' # The 0 tells us it works
DammDigit<-function(x){
    #Input the TA-quasigroup matrix
    DammMatrix<-matrix(nrow=10,ncol=10)
    DammMatrix[1,]<-c(0,3,1,7,5,9,8,6,4,2)
    DammMatrix[2,]<-c(7,0,9,2,1,5,4,8,6,3)
    DammMatrix[3,]<-c(4,2,0,6,8,7,1,3,5,9)
    DammMatrix[4,]<-c(1,7,5,0,9,8,3,4,2,6)
    DammMatrix[5,]<-c(6,1,2,3,0,4,5,9,7,8)
    DammMatrix[6,]<-c(3,6,7,4,2,0,9,5,8,1)
    DammMatrix[7,]<-c(5,8,6,9,7,2,0,1,3,4)
    DammMatrix[8,]<-c(8,9,4,5,3,6,2,0,1,7)
    DammMatrix[9,]<-c(9,4,3,8,6,1,7,2,0,5)
    DammMatrix[10,]<-c(2,5,8,1,4,3,6,7,9,0)
    
    #split the number, x, into its component parts
    DammVector <- as.numeric(unlist(strsplit(as.character(x),"")))
    
    #Then set the interim digit and run through the algorithm
    InterimDigit <- 0
    for(i in 1:length(DammVector)){
        InterimDigit <- DammMatrix[InterimDigit+1,DammVector[i]+1]
        #note: +1 is added to the row and column references here because
        #R numbers rows and columns 1-10 but the
        #algorithm requires them to be numbered 0-9
    }
    #Return the check digit
    InterimDigit
}
