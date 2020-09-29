###############################################################################################
# @name rename_files_in_R.R
# @description This script copies all files into a new directory in which files are then renamed 
# @author Natalie Holz
###############################################################################################

#set input directory
input_files <- ""

# create output directory
output_files = ""
dir.create(output_files)


# copy stim to new directory: 
# create list w file info, then copy files
input_file_list <- list.files(input_files, full.names = T)
file.copy(from = input_file_list, to = output_files)

# rename files
# create list with file name
old_file_names <- list.files(output_files, full.names = FALSE)

# define new file names in list
new_file_names <- str_replace(old_file_names,".txt","_newname.txt")

#rename files
file.rename(from = file.path(output_files, old_file_names), to = file.path(output_files, new_file_names))

#done
