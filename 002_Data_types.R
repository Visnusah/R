x = c(2, 4, 8, 6, 5)
y = c("Harry", "Kane", "DK")
z = c("Kamlesh", 12, 243)
a = c(TRUE, 34, 23)

# SEE the datatypes
typeof(x) # "double"
typeof(a) # "double"
typeof(z) # "character"
typeof(y) # "character"

# SEE the class of variables
class(x) # "numeric"
class(a) # "numeric"
class(z) # "character"
class(y) # "character"

#******************Typeof() and manupulation*********************************
b = c(9,3,4,5,82)
typeof(b) # "double
class(b) # "numeric"
k = x + b 
show(k) # 11  7 12 11 87

#*********************** Indexing ****************************
#LAB session
# in r programming language index starting from 1 not 0 like other programing language

people = c("DKovk", "Fedder", "Thiem", "Kenyaa", "Aljsd")
print(people)

people[2] # "Fedder"
people[-1] # "Fedder" "Thiem"  "Kenyaa" "Aljsd" 
people[-2] # "DKovk"  "Thiem"  "Kenyaa" "Aljsd"


numbers = c(10,20,30,40)
numbers[numbers > 20] # 30 40
numbers[-1] # 20 30 40

#******************* Seq() ********************************
# To find odds numbers between 1 to 20
odds = seq(1,20,2)
show(odds) # 1  3  5  7  9 11 13 15 17 19

even = seq(2,20,2)
show(even) #2  4  6  8 10 12 14 16 18 20

#********************* show and print ******************************
#* also read diff betn shows and print in R.
vowels = c("a", 'e', 'i', 'o', 'u')
print(vowels) # "a" "e" "i" "o" "u"
show(vowels[length(vowels)]) # "u"



#***************************************************
shoe_sizes = c(5.5, 11, 7, 8, 4)
filter = c(TRUE, FALSE, FALSE, FALSE, TRUE)
print(shoe_sizes[filter])
shoe_is_small = (shoe_sizes < 6)
show(shoe_is_small) #TRUE FALSE FALSE FALSE  TRUE
show(shoe_sizes[shoe_is_small]) # 5.5 4.0
show(shoe_sizes[shoe_is_small>6]) # numeric(0)

#***************************************************

person = list(
  first_name = "ada",
  job = "programmer",
  salary = 100000,
  carparking_permit  = TRUE
)

print(person)
typeof(person) # "list"
person$first_name # "ada"
person$salary # 1e+05 

# print keys only
names(person) # "first_name"        "job"               "salary"            "carparking_permit"
?list
colnames(person) # NULL

#********************diff betn [ ] and [[ ]] *******************************
person[["salary"]] # 1e+05
person["salary"] # 1e+05
typeof(person["salary"]) # "list"
typeof(person[["salary"]]) # "double"

animanls = list("dog", "cat", "lion")
print(animanls)
animanls[1]
o = animanls[[1]]
is.list(animanls) # TRUE
is.list(o) # FALSE
typeof(animanls) # "list"
typeof(o) # "character"

#***************************************************