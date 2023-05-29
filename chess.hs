data Piece = Pawn | Knight | Bishop | Rook | Queen | King deriving (Show, Eq)
data Color = White | Black deriving (Show, Eq)
data Square = Square { piece :: Maybe Piece, color :: Maybe Color } deriving (Show, Eq)
type Chessboard = [[Square]]

-- Initial chessboard
initialBoard :: Chessboard
initialBoard =
  [ [ Square { piece = Just Rook, color = Just White }, Square { piece = Just Knight, color = Just White }, Square { piece = Just Bishop, color = Just White }, Square { piece = Just Queen, color = Just White }, Square { piece = Just King, color = Just White }, Square { piece = Just Bishop, color = Just White }, Square { piece = Just Knight, color = Just White }, Square { piece = Just Rook, color = Just White } ]
  , [ Square { piece = Just Pawn, color = Just White }, Square { piece = Just Pawn, color = Just White }, Square { piece = Just Pawn, color = Just White }, Square { piece = Just Pawn, color = Just White }, Square { piece = Just Pawn, color = Just White }, Square { piece = Just Pawn, color = Just White }, Square { piece = Just Pawn, color = Just White }, Square { piece = Just Pawn, color = Just White } ]
  , [ Square { piece = Nothing, color = Nothing }, Square { piece = Nothing, color = Nothing }, Square { piece = Nothing, color = Nothing }, Square { piece = Nothing, color = Nothing }, Square { piece = Nothing, color = Nothing }, Square { piece = Nothing, color = Nothing }, Square { piece = Nothing, color = Nothing }, Square { piece = Nothing, color = Nothing } ]
  , [ Square { piece = Nothing, color = Nothing }, Square { piece = Nothing, color = Nothing }, Square { piece = Nothing, color = Nothing }, Square { piece = Nothing, color = Nothing }, Square { piece = Nothing, color = Nothing }, Square { piece = Nothing, color = Nothing }, Square { piece = Nothing, color = Nothing }, Square { piece = Nothing, color = Nothing } ]
  , [ Square { piece = Nothing, color = Nothing }, Square { piece = Nothing, color = Nothing }, Square { piece = Nothing, color = Nothing }, Square { piece = Nothing, color = Nothing }, Square { piece = Nothing, color = Nothing }, Square { piece = Nothing, color = Nothing }, Square { piece = Nothing, color = Nothing }, Square { piece = Nothing, color = Nothing } ]
  , [ Square { piece = Nothing, color = Nothing }, Square { piece = Nothing, color = Nothing }, Square { piece = Nothing, color = Nothing }, Square { piece = Nothing, color = Nothing }, Square { piece = Nothing, color = Nothing }, Square { piece = Nothing, color = Nothing }, Square { piece = Nothing, color = Nothing }, Square { piece = Nothing, color = Nothing } ]
  , [ Square { piece = Just Pawn, color = Just Black }, Square { piece = Just Pawn, color = Just Black }, Square { piece = Just Pawn, color = Just Black }, Square { piece = Just Pawn, color = Just Black }, Square { piece = Just Pawn, color = Just Black }, Square { piece = Just Pawn, color = Just Black }, Square { piece = Just Pawn, color = Just Black }, Square { piece = Just Pawn, color = Just Black } ]
  , [ Square { piece = Just Rook, color = Just Black }, Square { piece = Just Knight, color = Just Black }, Square { piece = Just Bishop, color = Just Black }, Square { piece = Just Queen, color = Just Black }, Square { piece = Just King, color = Just Black }, Square { piece = Just Bishop, color = Just Black }, Square { piece = Just Knight, color = Just Black }, Square { piece = Just Rook, color = Just Black } ]
  ]

-- Print chessboard
printChessboard :: Chessboard -> IO ()
printChessboard = mapM_ (putStrLn . concatMap showRow)
  where
    showRow :: Square -> String
    showRow sq = case piece sq of
      Just piece -> show piece ++ " "
      Nothing -> ". "

main :: IO ()
main = do
  printChessboard initialBoard
