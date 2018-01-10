class E018_4Sum
    # @param {Integer[]} nums
    # @param {Integer} target
    # @return {Integer[][]}
    def four_sum(nums, target)          
        res = []
        return res if ( nums.length < 4 )
        nums.sort!
        len = nums.size
        ma = nums[len - 1]
        maxSum = ma * 3
        for i in 0..( len - 3 )
            curr = nums[i]
            return res if ( curr << 2 > target )
            next if ( i > 0 && curr == nums[ i - 1 ] )
            next if ( curr + maxSum < target )
            for j in (i+1)..( len - 2 ) 
                break if ( curr + nums[j] * 3 > target )
                next if ( j > i +1 && nums[j] == nums[j-1] )
                cc = curr + nums[j]
                l = j + 1
                h = len - 1
                while ( l < h )
                    tmp = cc + nums[l] + nums[h]
                    if ( tmp < target )
                        l+=1
                    elsif ( tmp > target )
                        h-=1
                    else
                        res << [curr, nums[j], nums[l], nums[h]]
                        l+=1 while ( l < h && nums[l] == nums[l+1] )
                        h-=1 while ( l < h && nums[h] == nums[h-1] )
                        h-=1
                        l+=1
                    end
                end
            end
        end
        return res
    end
end