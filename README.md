# Improved-Apriori-Alogrithm

## ABSTRACT

In today’s world, with the development in technology, we have seen the introduction of online services in almost all commercial sectors. These services make it convenient and easy for the consumers and save a lot of time and resources especially given the current condition laid out by the pandemic where everyone is trying to step out of their homes as little as possible. In most of these services, with the advent of machine learning and artificial intelligence, many enhancements have been introduced that make the process of purchase more comfortable. One of these enhancements involve recommender systems that can be seen in many e-commerce websites such as amazon, flipkart, snapdeal etc. where after purchasing a particular item, the user is recommended certain other items that may be related to the item purchased. The foundation of this system is based on data mining concepts involving the discovery of frequent itemsets leading to certain association rules which are found using an algorithm known as Apriori Algorithm which is considered to be really inefficient due to multiple scans of the database. In this paper, we take up the task to enhance the efficiency of this algorithm that reduces the redundant scans in this algorithm and also the time complexity of lookups of items to form itemsets in each step.

<br>
## PROBLEM STATEMENT

We aim at reducing the complexity of the algorithm and enhancing its efficiency by tweaking the intuition of the algorithm. We plan to conduct a detailed analysis and comparison between both the standard apriori algorithm and the proposed improved apriori algorithm and conclude on a positive note with the benefits of our proposed algorithm.

<br>
## INTRODUCTION

Data  mining  also  known  as  Knowledge  Discovery  in Database(KDD).  The  purpose  of  data  mining  is  to  abstract interesting  knowledge  from  the  large  database.  From  the  analysis of  abstracted  patterns,  decision-making can  be  done  very easily. Association  rule  is  based  mainly  on  discovering  frequent itemsets.  

Association  rules  are  frequently  used  by  retail  stores  to assist  in  marketing,  advertising,  inventory  control,  and predicting faults  in  telecommunication  networks. The Apriori  algorithm  represents  the  candidate  generation approach.  It generates candidate  (k+1)  itemsets  based  on  frequent k-itemsets.  

Apriori is a  Breadth  First  Search  Algorithm  (BFS).  It is the iterative process for locating the frequent itemsets from the massive dataset. With the assistance of these association rules, it determines how strongly or how weakly two objects are connected.

<br>
## LITERATURE REVIEW

<br>
## EXISTING METHOD

The Apriori algorithm uses frequent itemsets to get association rules, and it's designed to figure on the databases that contain transactions. It employs  an  iterative  approach  known  as  a  levelwise search,  where  k-itemsets  are  used  to  explore  (k+1)-itemsets. The process starts with the finding of frequent 1-itemsets by scanning the database and gathering the count of each item in all transactions and then retaining those items having an occurrence greater than the minimum support value chosen. The next step involves finding all possible combinations of the items found in the 1-itemsets to form 2-itemsets, again whose occurrences are checked for in the transactions and are either retained or discarded based on their values with respect to the minimum support value. This is then extended for finding frequent 3-itemsets, which is then extended to find frequent 4-itemsets and so on till finally no k-itemsets can be generated from (k-1)-itemsets. The list of k-itemsets is represented by the variable Lk. Finding each Lk requires a complete scan of the database. The process of scanning the database is first of all really slow, and also consists of many redundancies thus messing up the efficiency of the algorithm massively.

<br>
## PROPOSED METHOD

As mentioned above, the major issues in the traditional Apriori algorithm involve multiple scannings of the database and also the time complexity of lookups in the database for particular transactions that are required for each step thus resulting in a huge time complexity rendering it inefficient. 

We aim to improve the overall efficiency of the algorithm by working on these two aspects by the introduction of the hash table data structure into the implementation of this algorithm along with the concept of transaction reduction.  

Hash table is a data structure known for its high speed and amazing time complexity when it comes to lookups in the data structure for particular elements. It makes use of either a single or multiple functions known as hashing functions that map a certain element to a certain position in the table based on the processing of some property of the element by the hash function. This makes it easier for one to locate a particular element as well since all it requires is passing that element through that very function to obtain its exact position in the structure. Therefore, we try to improve the lookup time for particular items in the database which might be required for forming itemsets with the help of this data structure. 

The other concept that we are using involves transaction reduction. As the name suggests, we focus on reducing the number of transactions being scanned in each iteration for the formation of itemsets. We introduce a variable that keeps track of the size of transactions and another threshold value, in addition to the minimum support value, that helps in discarding smaller transactions(consisting of fewer items) as the probability of smaller transactions forming a frequent itemset is almost negligible. This reduces the number of elements required for scanning in each transaction thus improving the time complexity by a massive extent due to the repetitive reduction of steps in each iteration. 

<br>
## COMPARATIVE ANALYSIS



<br>
## REFERENCES

Arcos, J. R. D., & Hernandez, A. A. (2019, October). Efficient Apriori Algorithm using Enhanced Transaction Reduction Approach. In 2019 IEEE 13th International Conference on Telecommunication Systems, Services, and Applications (TSSA) (pp. 97-101). IEEE.

Yulanda, R. D., Wahyuningsih, S., & Amijaya, F. D. T. (2019, July). Association rules with apriori algorithm and hash-based algorithm. In Journal of Physics: Conference Series (Vol. 1277, No. 1, p. 012048). IOP Publishing.

Singh, J., Ram, H., & Sodhi, D. J. (2013). Improving efficiency of apriori algorithm using transaction reduction. International Journal of Scientific and Research Publications, 3(1), 1-4.

Shakya, S., Singh, A., & Singh, D. (2013). A Survey on Hash based A-priori Algorithm for Web Log Analysis. International Journal of Computer Applications, 76(13).

Han, J., Pei, J., & Kamber, M. (2011). Data mining: concepts and techniques. Elsevier.
