import qualified Data.Map.Strict as DM
import Data.List.Extra (list)

main :: IO ()
main = do

  s <- getLine

  let list = [("tourist",3858), ("ksun48",3679), ("Benq",3658), ("Um_nik",3648), ("apiad",3638), ("Stonefeang",3630), ("ecnerwala",3613), ("mnbvmar",3555), ("newbiedmy",3516), ("semiexp",3481)]

  -- 内包表記を使う
  print $ [v|(k,v)<-list,k==s]!!0

  -- Data.Mapを使う
  -- let list' = DM.fromList list
  -- print $ DM.findWithDefault 0 s list'

  -- lookupを使う
  -- let Just v = lookup s list
  -- print v

