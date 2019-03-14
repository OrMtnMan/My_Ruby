##Pseudo Code 1
START

SET total = 0

GET integer1
GET integer2

SET total = integer1 + integer2

PRINT total

END

##Pseudo Code 2
START

SET array = [Array, of, Strings]

SET output = ""

GET each of array
	SET output = output + each
END

PRINT output

END
##Psuedo Code 3
START

SET array = [1,2,3,4,5]
SET counter = 0
SET newarray = []

LOOP
	IF array size = 0
		BREAK
	END
	GET each of array
	IF counter = 0
		INSERT each into newarray
		counter = counter + 1
	ELSE
		counter = counter - 1
	END
END
PRINT newarray

END