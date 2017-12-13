class E012_IntegertoRoman
    # @param {Integer} n
    # @return {String}
    def int_to_roman(n)
        r = [
                "","I","II","III","IV","V","VI","VII","VIII","IX",
                "","X","XX","XXX","XL","L","LX","LXX","LXXX","XC",
                "","C","CC","CCC","CD","D","DC","DCC","DCCC","CM",
                "","M","MM","MMM","MMMM"
            ]
        r[n/1000 + 30] + r[(n%1000)/100 + 20] + r[(n%100)/10 + 10] + r[n%10]    
    end
end