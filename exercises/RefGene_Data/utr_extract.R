codingTx<-read.csv(file ="C:/Users/Narayanan/Desktop/summer_worklog/coding_transcripts.csv",header = T)
utr1 <- data.frame()
utr2 <- data.frame()
for (i in 1:dim(codingTx)[1])
{
  exStart = strsplit(x = codingTx[i,10], split = ",")
  exEnd = strsplit(x= codingTx[i,11], split = "," )
  
  if (codingTx[i,4] == "+") {
    
    if (codingTx[i,5] == codingTx[i,7] && codingTx[i,7] == exStart[[1]][1]){         
      
      utr1[i, ] <- rbind(cbind("5UTR ", "-", "-", codingTx[i,3:4], codingTx[i,13], codingTx[i,2]))
      
    }
    
    else if (codingTx[i,5] == codingTx[i,7] && codingTx[i,7] != exStart[[1]][1]){ 
      
      utr1[i,1:7] <- rbind(cbind("5UTR ",codingTx[i,5], exStart[[1]][1], codingTx[i,3:4], codingTx[i,13], codingTx[i,2]))
    }
    
    else if(codingTx[i,5] != codingTx[i,7] && codingTx[i,7] == exStart[[1]][1]){
      
      utr1[i,1:7] <- rbind(cbind("5UTR ", codingTx[i,5], codingTx[i,7], codingTx[i,3:4], codingTx[i,13], codingTx[i,2]))
    }
    
    else if(codingTx[i,5] != codingTx[i,7] && codingTx[i,5] == exStart[[1]][1]){
      
      utr1[i,1:7] <- rbind(cbind("5UTR ", codingTx[i,5], codingTx[i,7], codingTx[i,3:4], codingTx[i,13], codingTx[i,2]))
    } 
    
    if (codingTx[i,6] == codingTx[i,8] && codingTx[i,8] == exEnd[[1]][codingTx[i,9]]){
      
      utr2[i, ] <- rbind(cbind("3UTR ", "-", "-", codingTx[i,3:4], codingTx[i,13], codingTx[i,2]))
    }
    
    else if (codingTx[i,6] == codingTx[i,8] && codingTx[i,8] != exEnd[[1]][codingTx[i,9]]){
      
      utr2[i,1:7] <- rbind(cbind("3UTR ", exEnd[[1]][codingTx[i,9]], codingTx[i,5], codingTx[i,3:4], codingTx[i,13], codingTx[i,2]))
    }
    
    else if(codingTx[i,6] != codingTx[i,8] && codingTx[i,8] == exEnd[[1]][codingTx[i,9]]){
      
      utr2[i,1:7] <- rbind(cbind("3UTR ",codingTx[i,8], codingTx[i,6], codingTx[i,3:4], codingTx[i,13], codingTx[i,2]))
    }
    
    else if(codingTx[i,6] != codingTx[i,8] && codingTx[i,6] == exEnd[[1]][codingTx[i,9]]){
      
      utr2[i,1:7] <- rbind(cbind("3UTR ",codingTx[i,8], codingTx[i,6], codingTx[i,3:4], codingTx[i,13], codingTx[i,2]))
    }
  }
  
  if (codingTx[i,4] == "-"){
    
    if (codingTx[i,5] == codingTx[i,7] && codingTx[i,7] == exStart[[1]][1]){ 
      
      utr1[i, ] <- rbind(cbind("3UTR ", "-", "-", codingTx[i,3:4], codingTx[i,13], codingTx[i,2]))
    }
    
    else if (codingTx[i,5] == codingTx[i,7] && codingTx[i,7] != exStart[[1]][1]){
      
      utr1[i,1:7] <- rbind(cbind("3UTR ", codingTx[i,5],exStart[[1]][1], codingTx[i,3:4], codingTx[i,13], codingTx[i,2]))
    }
    
    
    else if(codingTx[i,5] != codingTx[i,7] && codingTx[i,7] == exStart[[1]][1]){
      
      utr1[i,1:7] <- rbind(cbind("3UTR ",codingTx[i,5], codingTx[i,7], codingTx[i,3:4], codingTx[i,13], codingTx[i,2]))
    }
    
    
    else if(codingTx[i,5] != codingTx[i,7] && codingTx[i,5] == exStart[[1]][1]){
      
      utr1[i,1:7] <- rbind(cbind("3UTR ",codingTx[i,5], codingTx[i,7], codingTx[i,3:4], codingTx[i,13], codingTx[i,2]))
    }
    
    if (codingTx[i,6] == codingTx[i,8] && codingTx[i,8] == exEnd[[1]][codingTx[i,9]]){
      
      utr2[i, ] <- rbind(cbind("5UTR ", "-", "-", codingTx[i,3:4], codingTx[i,13], codingTx[i,2]))
    }  
    else if (codingTx[i,6] == codingTx[i,8] && codingTx[i,8] != exEnd[[1]][codingTx[i,9]]){
      
      utr2[i,1:7] <- rbind(cbind("5UTR ", exEnd[[1]][codingTx[i,9]], codingTx[i,5], codingTx[i,3:4], codingTx[i,13], codingTx[i,2]))
    }
    else if(codingTx[i,6] != codingTx[i,8] && codingTx[i,8] == exEnd[[1]][codingTx[i,9]]){
      
      utr2[i,1:7] <- rbind(cbind("5UTR ", codingTx[i,8], codingTx[i,6], codingTx[i,3:4], codingTx[i,13], codingTx[i,2]))
    }
    else if(codingTx[i,6] != codingTx[i,8] && codingTx[i,6] == exEnd[[1]][codingTx[i,9]]){
      
      utr2[i,1:7] <- rbind(cbind("5UTR ", codingTx[i,8], codingTx[i,6], codingTx[i,3:4], codingTx[i,13], codingTx[i,2]))
    }
  }
}

colnames(utr1) <- c("type","start","end","chrom","strand","geneName","transcript_id")
colnames(utr2) <- c("type","start","end","chrom","strand","geneName","transcript_id")

write.csv(x = utr1, file = "utr_1.csv", row.names = F)
write.csv(x = utr2, file = "utr_2.csv", row.names = F)