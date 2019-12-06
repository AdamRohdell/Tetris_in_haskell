import Data.List

data Color = Red | Blue | Green | Yellow

type Block = Maybe Color

newtype Tetrimino = Tetrimino [Block]

blocks:: Tetrimino -> [Block]
blocks (Tetrimino bs) = bs

type Row = [Block]

emptyTetrimino = [n,n,n,n,n,n,n,n]
        where
            n = Nothing

emptyRow = [n,n,n,n,n,n,n,n,n,n]
        where
            n = Nothing
isValidTetrimino :: Tetrimino -> Bool
isValidTetrimino t = length (blocks t) < 16 && isTetrimino t 

