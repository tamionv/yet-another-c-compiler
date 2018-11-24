module Generator  where
import Syntax
import qualified Data.Map.Strict as Map
import qualified Data.Set as Set

builtin_type_sizes = Map.fromList
    [(Void, 0)
    ,(Char, 1)
    ,(Short, 2)
    ,(Int, 4)
    ,(Long, 4)
    ,(LongLong, 8)
    ,(Float, 4)
    ,(Double, 8)
    ,(UnsignedInt, 4)
    ,(UnsignedLong, 4)
    ,(UnsignedLongLong, 8)
    ]

builtin_type_alignments = builtin_type_sizes

data GeneratorState = GeneratorState
    { type_sizes        :: Map.Map Type Int
    , type_alignments   :: Map.Map Type Int
    , global_variables  :: Set.Set String
    } deriving (Eq, Ord, Show)

generate_expression = id
