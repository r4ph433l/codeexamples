print' :: String -> IO ()
print'    []      = return ()
print'    (x:xs)  = (putChar x) >> print' xs

main :: IO ()
main = print "Hello World!"
