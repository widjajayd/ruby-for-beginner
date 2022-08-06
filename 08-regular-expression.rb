/aba/ =~ "Surabaya"     # 3, the word aba was found in the 3th index,
                        # Remember, the index started with 0 (zero).
/Aba/ =~ "SURABAYA"     # nil, the word aba was not found because it is case sensitive
/Aba/i =~ "Surabaya"    # 3, the i at the end means ignore the uppercase/lowercase letters
/a b a/i =~ "Surabaya"  # nil, because there are spaces
/a b a/x =~ "Surabaya"  # 3, the x at the end means ignore spaces
/^aba/ =~ "Surabaya"    # nil, because the aba in surabaya is not at the beginning
/^aba/ =~ "abang abang" # 0, because we met at index 0
/aya$/ =~ "Surabaya surabaya" # 14, because the last aya is taken


# Example 1

pattern1 = %r{<(.+)>(.+)<(.+)>}ix
result = pattern1.match("<html>Programming with Ruby</html>")
result[0]              # <html>Programming with Ruby</html>
result[1]              # html
result[2]              # Programming with Ruby
result[3]              # /html

# Example 2

pattern2 = %r{(?<date>\d{1,2})-(?<month>\d{1,2})-(?<year>\d{4})}
result = pattern2.match("Independence of Indonesia is 17-08-1945")
result[0]              # 17-08-1945
result[:date]          # 17
result[:month]         # 08
result[:year]          # 1945