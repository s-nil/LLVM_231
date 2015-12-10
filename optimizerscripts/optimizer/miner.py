#!/user/bin/python
import re
import sys
import collections
import fileinput
import os


def readFile(filename,map):
	file = open(filename,'r')
	flag = 0
	outFlag = 0
	for line in file.readlines():
		#print line
		line = line.strip()
		#print line
		matchEntry = re.match(r'.*entry.*',line)
		#cool last set
		if matchEntry:
			flag =1
			print flag
			continue
		if flag:
			matchoutcoming = re.match(r'.*out.*',line)
			if matchoutcoming:
				outFlag =1
				print outFlag
				continue
		if flag and outFlag:
		 	if not line or line =="\n" or line== " " or line =="=======":
				print "none"
			else:
				print line
				relation = re.split("->",line)
				x =relation[0]
				y = relation[1]
				if x  not in map:
					map[x]=set()
					map[x].add(y)
				else:
					map[x].add(y)
			
			

def optimizeSource(equal_list,filein,fileout):
	
	originName= filein
	filein = filein+".cpp"
	for sameList in equal_list:
		textToReplace = sameList[0]
		for x in sameList:
			f = open(filein,'r')
			filedata = f.read()
			f.close()
			
			newdata = filedata.replace(x,textToReplace)
			
			f = open(fileout,'w')
			f.write(newdata)
			f.close()	
			filein=fileout
	lines_seen = set() # holds lines already seen
	outfile = open(originName+'++.cpp', "w")
	for line in open(fileout, "r"):
		if line.replace(" ","") not in lines_seen: # not a duplicate
			outfile.write(line)
			lines_seen.add(line.replace(" ",""))
	outfile.close()
	os.remove(fileout);
			
def main():
	map = dict()
	equal_list =[]
	filename = sys.argv[1]+".pointer.log"
	sourcefile = sys.argv[1]
	
	print filename
	print sourcefile
	readFile(filename,map)
	print map

	key_list = []
	value_list = []
	key_flag = []

	for k,v in  map.iteritems():
			key_list.append(k)
			value_list.append(v)
			key_flag.append(1)

	print key_list
	print value_list
	for i in range(len(value_list)):
		list =[]
		list.append(key_list[i])
		if key_flag[i]:
			for j in range(i+1,len(value_list)):
				if(value_list[i] == value_list[j]) and key_flag[j]:
					print key_list[i], " = " , key_list[j]
					list.append(key_list[j])
					key_flag[j]=0
		if len(list)>1:
			print "list is ",list
			my = []
			for x in list:
				my.append(x)
			equal_list.append(my)
	print equal_list
	optimizeSource(equal_list,sourcefile,sourcefile+'.!')
	
			
		
				
				
	
	

	

					
	
if __name__ == '__main__':
	main()