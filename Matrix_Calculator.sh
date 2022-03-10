#!/bin/sh
function Addition(){
	echo "Matrix Addition"
	echo -n Enter number of rows:
	read m
	echo -n Enter number of columns:
	read n
	echo Enter elements of matrix A:
	for((i=1;i<=$m;i++))
	do
		for((j=1;j<=$n;j++))
		do
			echo -n "Enter element ($i,$j):"
			read arr1[$i$j]
		done
	done
	echo Elements of matrix A:
	for((i=1;i<=$m;i++))
	do
		for((j=1;j<=$n;j++))
		do
			echo -n ${arr1[$i$j]}"  " 
		done
		echo
	done
	echo Enter elements of matrix B:
	for((i=1;i<=$m;i++))
	do
		for((j=1;j<=$n;j++))
		do
			echo -n "Enter element ($i,$j):"
			read arr2[$i$j]
		done
	done
	echo Elements of matrix B:
	for((i=1;i<=$m;i++))
	do
		for((j=1;j<=$n;j++))
		do
			echo -n ${arr2[$i$j]}"  "
		done
		echo
	done
	for((i=1;i<=$m;i++))
	do
		for((j=1;j<=$n;j++))
		do
			arr3[$i$j]=`expr ${arr1[$i$j]} + ${arr2[$i$j]}`
		done
	done
	echo After addition the matrix is:
	for((i=1;i<=$m;i++))
	do
		for((j=1;j<=$n;j++))
		do
			echo -n ${arr3[$i$j]}"  "
		done
		echo
	done
}
function Substraction(){ 
	echo "Matrix Substraction"
	echo -n Enter number of rows:
	read m
	echo -n Enter number of columns:
	read n
	echo Enter elements of matrix A:
	for((i=1;i<=$m;i++))
	do
		for((j=1;j<=$n;j++))
		do
			echo -n "Enter element ($i,$j):"
			read arr1[$i$j]
		done
	done
	echo Elements of matrix A:
	for((i=1;i<=$m;i++))
	do
		for((j=1;j<=$n;j++))
		do
			echo -n ${arr1[$i$j]}"  "
		done
		echo
	done
	echo Enter elements of matrix B:
	for((i=1;i<=$m;i++))
	do
		for((j=1;j<=$n;j++))
		do
			echo -n "Enter element ($i,$j):"
			read arr2[$i$j]
		done
	done
	echo Elements of matrix B:
	for((i=1;i<=$m;i++))
	do
		for((j=1;j<=$n;j++))
		do
			echo -n ${arr2[$i$j]}"  "
		done
		echo
	done
	for((i=1;i<=$m;i++))
	do
		for((j=1;j<=$n;j++))
		do
			arr3[$i$j]=`expr ${arr1[$i$j]} - ${arr2[$i$j]}`
		done
	done
	echo After Substraction the matrix is:
	for((i=1;i<=$m;i++))
	do
		for((j=1;j<=$n;j++))
		do
			echo -n ${arr3[$i$j]}"  "
		done
		echo
	done
}
function Multiplication(){
	echo "Matrix Multiplication" 
	echo -n Enter the number of rows:
        read m
	echo -n Enter the number of columns:
	read n
	echo Enter Elements of Matrix A
	for((i=1;i<=$m;i++))
	do 
		for((j=1;j<=$n;j++))
		do
			echo -n "Enter Element ($i,$j):"
			read arr1[$i$j]
		done
	done
	echo Elements of matrix A:
	for((i=1;i<=$m;i++))
	do
		for((j=0;j<=$n;j++))
		do
			echo -n ${arr1[$i$j]}"  "
		done
		echo
	done
	echo -n Enter number of columns in Matrix B:
	read n1
	echo Enter elements of matrix B:
	for((i=1;i<=$n;i++))
	do
		for((j=1;j<=$n1;j++))
		do
			echo -n "Enter element ($i,$j):"
			read arr2[$i$j]
		done
	done
	echo Elements of matrix B:
	for((i=1;i<=$n;i++))
	do
		for((j=1;j<=$n1;j++))
		do
			echo -n ${arr2[$i$j]}"  "
		done
		echo
	done
	for((i=1;i<=$m;i++))
	do
		for((j=1;j<=$n1;j++))
		do
			for((k=1;k<=$n;k++))
			do
				#arr3[$i$j] =`expr ${arr1[$i$k]} \* ${arr2[$k$j]}`
				#((i+=1))
				let "arr3[$i$j]+=`expr ${arr1[$i$k]} \* ${arr2[$k$j]}`" 

			done
		done
	done

	echo After Multiplication the matrix is:
	for((i=1;i<=$m;i++))
	do
		for((j=1;j<=$n1;j++))
		do
			echo -n ${arr3[$i$j]}"  "
		done
		echo
	done
} 
function menu() {
clear
echo
echo  -e "\t\t\tWELCOME TO MATRIX CALCULATOR\n"
echo  -e "\t1. MATRIX ADDITION"
echo  -e "\t2. MATRIX SUBSTRACTION"
echo  -e "\t3. MATRIX MULTIPLICATION"
echo  -e "\t0. Exit Menu\n\n"
echo  -en "\t\tEnter an Option: "
read  -n 1 option 
echo "   "
}
while [ 1 ]
do 
		menu
		case $option in
		0)
			break;;
	      	1)
			Addition
			break;;
		2)
			Substraction
			break;;
		3)
			Multiplication
			break;;
	        *)
		clear
		echo "Sorry, wrong selection";;
                esac	
	       done	
