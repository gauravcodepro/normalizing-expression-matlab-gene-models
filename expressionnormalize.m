# Author Gaurav
# Universitat Potsdam
# Date 2024-5-17 
%{
 a matlab function for the normalization of the gene expression levels for the 
 estimation of the upper bound and the lower bound levels. 
 reads a gene expression file and then log normalizes it and then estimated the gpr rules
 implemented the readtable instead of the readxls for faster reading of the files.
%}

% prompt asking for the input file, column and the sheet
 readfile = input(prompt, "please provide the gene expression file")
 sheet = input(prompt, "please provide the sheet number")
 column = input(prompt, "please provide the column number")
% condition evaluation
 if (~ column) 
    fileread = readtable(readfile, "sheet")
    expression = readtable(readfile, "sheet")
    maxexpr = Max(expression[:,1])
 elseif 
    fileredcolumn = readtable(readfile, "sheet", "column")
    maxexpr = Max(readtable(readfile, "sheet", "column"))
  end
% opening a array of empty zeros with length of the filtered column
expressionadd = zero(1,length(filteredcolumn))
% add the variables 
for i in 1:length(filteredcolumn)
   expressionadd(i) = log(filteredcolumn(i))/max(expr)
end 
% print the log transformed
for i in 1:length(expressionadd)
   disp(num2str(expressionadd(i)))
end

 