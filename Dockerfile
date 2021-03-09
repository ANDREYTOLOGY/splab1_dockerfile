
FROM debian
 
COPY ./s1.sh .
COPY ./Downloads/file1.txt .
COPY ./Downloads/file2.txt .
RUN chmod ugo+x s1.sh
CMD ./s1.sh 

