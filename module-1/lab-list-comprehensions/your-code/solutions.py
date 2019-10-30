#List Comprehensions Lab

#1. Use a list comprehension to create and print a list of consecutive integers starting with 1 and ending with 50

lst = [i+1 for i in range(50)]
print(lst)

#2. Use a list comprehension to create and print a list of even numbers starting with 2 and ending with 200.

lst2 = [i+2 for i in range(200) if i%2 ==0]
print(lst2)

#3. Use a list comprehension to create and print a list containing all elements of the 10 x 4 Numpy array below.

a = [[0.84062117, 0.48006452, 0.7876326 , 0.77109654],
       [0.44409793, 0.09014516, 0.81835917, 0.87645456],
       [0.7066597 , 0.09610873, 0.41247947, 0.57433389],
       [0.29960807, 0.42315023, 0.34452557, 0.4751035 ],
       [0.17003563, 0.46843998, 0.92796258, 0.69814654],
       [0.41290051, 0.19561071, 0.16284783, 0.97016248],
       [0.71725408, 0.87702738, 0.31244595, 0.76615487],
       [0.20754036, 0.57871812, 0.07214068, 0.40356048],
       [0.12149553, 0.53222417, 0.9976855 , 0.12536346],
       [0.80930099, 0.50962849, 0.94555126, 0.33364763]]

lst3 = [x for i in a for x in i]