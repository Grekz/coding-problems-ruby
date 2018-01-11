class E022_GenerateParentheses
    # @param {Integer} n
    # @return {String[]}
    def generate_parenthesis(n)
        def btHelper(st, ope, clo, res)
            btHelper(st + "(", ope - 1, clo, res) if ( ope > 0)
            btHelper(st + ")", ope, clo - 1, res) if ( clo > ope )
            res.push(st) if ( clo < 1 )
            return res
        end
        return btHelper("",n,n,[])
    end
end