{-# OPTIONS_GHC -w #-}
{-# OPTIONS -XMagicHash -XBangPatterns -XTypeSynonymInstances -XFlexibleInstances -cpp #-}
#if __GLASGOW_HASKELL__ >= 710
{-# OPTIONS_GHC -XPartialTypeSignatures #-}
#endif
module Parser (parse) where
import Token
import Syntax
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import qualified GHC.Exts as Happy_GHC_Exts
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.9

newtype HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 = HappyAbsSyn HappyAny
#if __GLASGOW_HASKELL__ >= 607
type HappyAny = Happy_GHC_Exts.Any
#else
type HappyAny = forall a . a
#endif
happyIn4 :: t4 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11)
happyIn4 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn4 #-}
happyOut4 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11) -> t4
happyOut4 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut4 #-}
happyIn5 :: t5 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11)
happyIn5 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn5 #-}
happyOut5 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11) -> t5
happyOut5 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut5 #-}
happyIn6 :: t6 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11)
happyIn6 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn6 #-}
happyOut6 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11) -> t6
happyOut6 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut6 #-}
happyIn7 :: t7 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11)
happyIn7 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn7 #-}
happyOut7 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11) -> t7
happyOut7 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut7 #-}
happyIn8 :: t8 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11)
happyIn8 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn8 #-}
happyOut8 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11) -> t8
happyOut8 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut8 #-}
happyIn9 :: t9 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11)
happyIn9 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn9 #-}
happyOut9 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11) -> t9
happyOut9 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut9 #-}
happyIn10 :: t10 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11)
happyIn10 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn10 #-}
happyOut10 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11) -> t10
happyOut10 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut10 #-}
happyIn11 :: t11 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11)
happyIn11 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn11 #-}
happyOut11 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11) -> t11
happyOut11 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut11 #-}
happyInTok :: (Token) -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11)
happyInTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyInTok #-}
happyOutTok :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11) -> (Token)
happyOutTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOutTok #-}


happyExpList :: HappyAddr
happyExpList = HappyA# "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x44\x4c\xc0\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xf8\x03\x00\x02\x00\x10\x3c\x06\x08\x00\x40\x00\x80\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x08\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x00\x4c\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x08\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x60\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\xf3\xff\xff\xfd\x7f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x10\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x10\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x10\x00\x00\x00\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\x33\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\x33\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\x33\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\x33\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\x33\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\x33\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\x33\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x60\xf3\xff\xff\xfd\x3f\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\x80\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x40\xf3\xff\xff\xfd\x1f\x00\x00\x00\x00\x00\x00\x40\xf3\xff\xff\xfd\x1f\x00\x00\x00\x00\x00\x00\x40\xf3\xff\xff\xfd\x1f\x00\x00\x00\x00\x00\x00\x40\xf3\xff\xff\xfd\x1f\x00\x00\x00\x00\x00\x00\x40\xf3\xff\xff\xfd\x1f\x00\x00\x00\x00\x00\x00\x40\xf3\xff\xff\xfd\x1f\x00\x00\x00\x00\x00\x00\x40\xf3\xff\xff\xfd\x1f\x00\x00\x00\x00\x00\x00\x40\xf3\xff\xff\xfd\x1f\x00\x00\x00\x00\x00\x00\x40\xf3\xff\xff\xfd\x1f\x00\x00\x00\x00\x00\x00\x40\xf3\xff\xff\xfd\x1f\x00\x00\x00\x00\x00\x00\x40\xf3\xff\xff\xfd\x1f\x00\x00\x00\x00\x00\x00\x40\xf3\xff\xff\xfd\x1f\x00\x00\x00\x00\x00\x00\x40\xf3\xff\xff\xfd\x1f\x00\x00\x00\x00\x00\x00\x40\xf3\xff\xff\xff\x3f\x00\x00\x00\x00\x00\x00\x40\xf3\xff\x7f\x00\x00\x00\x00\x00\x00\x00\x00\x40\xf3\xff\x3f\x00\x00\x00\x00\x00\x00\x00\x00\x40\xf3\xff\x1f\x00\x00\x00\x00\x00\x00\x00\x00\x40\xf3\xff\x0f\x00\x00\x00\x00\x00\x00\x00\x00\x40\xf3\xff\x07\x00\x00\x00\x00\x00\x00\x00\x00\x40\xf3\xff\x01\x00\x00\x00\x00\x00\x00\x00\x00\x40\xf3\xff\x01\x00\x00\x00\x00\x00\x00\x00\x00\x40\xf3\x1f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\xf3\x1f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\xf3\x1f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\xf3\x1f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\xf3\x07\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\xf3\x07\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\xf3\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\x33\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\xf3\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\x33\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\x33\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xc0\xf3\xff\xff\xfd\x3f\x00\x00\x00\x00\x00\x00\x60\xf3\xff\xff\xfd\x3f\x00\x00\x00\x00\x00\x00\x60\xf3\xff\xff\xfd\x3f\x00\x00\x00\x00\x00\x00\x60\xf3\xff\xff\xfd\x3f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xf8\x03\x00\x02\x00\x14\x3c\x06\x08\x00\x40\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\xf8\x00\x00\x00\x00\x10\x3c\x06\x08\x00\x00\x00\x00\x00\x00\x00\x00\x40\xf3\xff\xff\xfd\x1f\x00\x00\x00\x00\x00\x00\x40\xf3\xff\xff\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x08\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xf8\x03\x00\x02\x00\x18\x3c\x06\x08\x00\x40\x00\xf8\x03\x00\x02\x00\x14\x3c\x06\x08\x00\x40\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xf8\x03\x00\x02\x00\x10\x3c\x06\x08\x00\x40\x00\x00\x00\x08\x00\x00\x00\x00\x00\x00\x00\x00\x00\xf8\x03\x00\x02\x00\x14\x3c\x06\x08\x00\x40\x00\x00\x00\x00\x00\x00\x08\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xf8\x03\x00\x02\x00\x18\x3c\x06\x08\x00\x40\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","program","stmts","stmt","expr","type_specifier","declarand_list","declaration","declarations","NUM","STR","FLT","CHR","ID","PRINT","READ","AUTO","BREAK","CASE","CHAR","CONST","CONTINUE","DEFAULT","DO","DOUBLE","ELSE","ENUM","EXTERN","FLOAT","FOR","GOTO","IF","INT","LONG","REGISTER","RETURN","SHORT","SIGNED","SIZEOF","STATIC","STRUCT","SWITCH","TYPEDEF","UNION","UNSIGNED","VOID","VOLATILE","WHILE","\"{\"","\"}\"","\"(\"","\")\"","\"[\"","\"]\"","\"->\"","\".\"","\"!\"","\"~\"","\"++\"","\"--\"","\"/\"","\"%\"","\"+\"","\"*\"","\"-\"","\"<<\"","\">>\"","\"<\"","\"<=\"","\">\"","\">=\"","\"==\"","\"!=\"","\"&\"","\"^\"","\"|\"","\"&&\"","\"||\"","\"?\"","\":\"","\"=\"","\"+=\"","\"-=\"","\"*=\"","\"/=\"","\"%=\"","\">>=\"","\"<<=\"","\"&=\"","\"^=\"","\"|=\"","\",\"","\";\"","%eof"]
        bit_start = st * 96
        bit_end = (st + 1) * 96
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..95]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

happyActOffsets :: HappyAddr
happyActOffsets = HappyA# "\x00\x00\x00\x00\x09\x00\xac\xff\xa5\x00\x07\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x06\x00\x00\x00\xfe\xff\x00\x00\x00\x00\x00\x00\x0b\x00\x00\x00\x00\x00\xb7\xff\xe0\xff\x00\x00\x10\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x0d\x00\x22\x00\xdd\x00\xdd\x00\xdd\x00\xdd\x00\xdd\x00\xdd\x00\xdd\x00\xdd\x00\x00\x00\x51\x00\x51\x00\x51\x00\x51\x00\x51\x00\x51\x00\x51\x00\x3a\x01\xdd\x00\xdd\x00\xdd\x00\xdd\x00\xdd\x00\xdd\x00\x00\x00\x00\x00\xdd\x00\xdd\x00\xdd\x00\xdd\x00\xdd\x00\xdd\x00\xdd\x00\xdd\x00\xdd\x00\xdd\x00\xdd\x00\xdd\x00\xdd\x00\xdd\x00\xdd\x00\xdd\x00\xdd\x00\xdd\x00\xdd\x00\xdd\x00\xdd\x00\xdd\x00\xdd\x00\xdd\x00\xdd\x00\xdd\x00\xdd\x00\xdd\x00\xdd\x00\xdd\x00\xdd\x00\x00\x00\xdd\x00\x4b\x00\x00\x00\x00\x00\xe2\xff\x2d\x02\x2d\x02\x2d\x02\x2d\x02\x2d\x02\x2d\x02\x2d\x02\x2d\x02\x2d\x02\x2d\x02\x2d\x02\x2d\x02\x2d\x02\xdd\x01\x54\x02\x6d\x02\x85\x02\x9c\x02\xb2\x02\xc8\x00\xc8\x00\xc7\x02\xc7\x02\xc7\x02\xc7\x02\xd6\x02\xd6\x02\x25\x00\x51\x00\x25\x00\x51\x00\x51\x00\x00\x00\x00\x00\x05\x02\x63\x01\x8c\x01\xb5\x01\x00\x00\x01\x00\x16\x00\x17\x00\x00\x00\xdd\x00\xdd\x00\x2d\x02\xed\x00\x00\x00\x00\x00\x41\x00\x00\x00\x0c\x00\x44\x00\x00\x00\xa5\x00\x45\x00\x62\x00\x36\x00\x00\x00\x00\x00\x00\x00\x9a\x00\x00\x00\x00\x00"#

happyGotoOffsets :: HappyAddr
happyGotoOffsets = HappyA# "\x15\x00\x66\x00\x1a\x00\x00\x00\x24\x00\x6a\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x6d\x00\x6e\x00\x6f\x00\x70\x00\x75\x00\x77\x00\x7b\x00\x7e\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x7f\x00\x83\x00\x84\x00\x85\x00\x86\x00\x88\x00\x00\x00\x00\x00\x8a\x00\x8b\x00\x8c\x00\x8d\x00\x8e\x00\x93\x00\x94\x00\x9f\x00\xa1\x00\xa2\x00\xaa\x00\xab\x00\xac\x00\xad\x00\xaf\x00\xb0\x00\xb1\x00\xb2\x00\xb4\x00\xb5\x00\xb6\x00\xb7\x00\xb8\x00\xba\x00\xbb\x00\xbc\x00\xbd\x00\xbe\x00\xbf\x00\xc2\x00\xc3\x00\x00\x00\xc4\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x2d\x00\x00\x00\x00\x00\x00\x00\xc5\x00\xc6\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xcd\x00\x38\x00\x3e\x00\x00\x00\x4c\x00\x00\x00\x5b\x00\x00\x00\x00\x00\x00\x00\xcf\x00\x5f\x00\x00\x00\x00\x00"#

happyAdjustOffset :: Happy_GHC_Exts.Int# -> Happy_GHC_Exts.Int#
happyAdjustOffset off = off

happyDefActions :: HappyAddr
happyDefActions = HappyA# "\xac\xff\x00\x00\xfd\xff\x00\x00\xfe\xff\xb2\xff\xab\xff\xbe\xff\xb8\xff\xb9\xff\xbc\xff\xbb\xff\xbd\xff\x00\x00\xbf\xff\xb6\xff\xb7\xff\xb5\xff\xb4\xff\xba\xff\x00\x00\xb1\xff\xfc\xff\x00\x00\xf0\xff\xee\xff\xef\xff\xed\xff\xf1\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xfb\xff\xe2\xff\xe3\xff\xe1\xff\xe7\xff\xe8\xff\xe4\xff\xe9\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xe6\xff\xe5\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xfa\xff\x00\x00\x00\x00\xad\xff\xb3\xff\xaf\xff\xb0\xff\xc0\xff\xc1\xff\xc2\xff\xc3\xff\xc4\xff\xc5\xff\xc6\xff\xc7\xff\xc8\xff\xc9\xff\xca\xff\xcb\xff\x00\x00\xcc\xff\xcd\xff\xce\xff\xcf\xff\xd0\xff\xd1\xff\xd2\xff\xd3\xff\xd4\xff\xd5\xff\xd6\xff\xd7\xff\xd8\xff\xda\xff\xd9\xff\xdb\xff\xdc\xff\xdd\xff\xde\xff\xdf\xff\x00\x00\x00\x00\x00\x00\x00\x00\xeb\xff\x00\x00\x00\x00\x00\x00\xea\xff\x00\x00\x00\x00\xae\xff\xec\xff\xf9\xff\xf8\xff\xf7\xff\xfd\xff\x00\x00\x00\x00\xf5\xff\x00\x00\xf6\xff\x00\x00\x00\x00\xf4\xff\xf3\xff\xfd\xff\x00\x00\xf2\xff"#

happyCheck :: HappyAddr
happyCheck = HappyA# "\xff\xff\x55\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\x06\x00\x07\x00\x0b\x00\x53\x00\x54\x00\x05\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\x06\x00\x07\x00\x0b\x00\x00\x00\x18\x00\x19\x00\x17\x00\x10\x00\x1c\x00\x01\x00\x07\x00\x14\x00\x04\x00\x19\x00\x06\x00\x18\x00\x19\x00\x17\x00\x19\x00\x1c\x00\x02\x00\x03\x00\x48\x00\x28\x00\x48\x00\x2a\x00\x2a\x00\x24\x00\x25\x00\x02\x00\x03\x00\x30\x00\x31\x00\x32\x00\x33\x00\x29\x00\x2a\x00\x2a\x00\x37\x00\x38\x00\x02\x00\x03\x00\x30\x00\x31\x00\x32\x00\x33\x00\x02\x00\x03\x00\x41\x00\x37\x00\x38\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\x06\x00\x07\x00\x2a\x00\x41\x00\x02\x00\x03\x00\x05\x00\x2c\x00\x11\x00\x2e\x00\x2f\x00\x54\x00\x11\x00\x32\x00\x33\x00\x34\x00\x35\x00\x17\x00\x37\x00\x02\x00\x03\x00\x29\x00\x54\x00\x02\x00\x03\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\x06\x00\x07\x00\x54\x00\x54\x00\x28\x00\x07\x00\x2a\x00\x05\x00\x03\x00\x03\x00\x03\x00\x03\x00\x30\x00\x31\x00\x32\x00\x33\x00\x03\x00\x17\x00\x03\x00\x37\x00\x38\x00\x2c\x00\x03\x00\x2e\x00\x2f\x00\x03\x00\x03\x00\x32\x00\x33\x00\x41\x00\x03\x00\x03\x00\x03\x00\x03\x00\x28\x00\x03\x00\x2a\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x30\x00\x31\x00\x32\x00\x33\x00\x03\x00\x03\x00\x54\x00\x37\x00\x38\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\x06\x00\x07\x00\x03\x00\x41\x00\x03\x00\x03\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\x06\x00\x07\x00\x03\x00\x03\x00\x03\x00\x03\x00\x17\x00\x03\x00\x03\x00\x03\x00\x03\x00\x54\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x17\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x29\x00\x2a\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x30\x00\x31\x00\x32\x00\x33\x00\x01\x00\x2a\x00\x01\x00\x37\x00\x38\x00\xff\xff\xff\xff\x30\x00\x31\x00\x32\x00\x33\x00\xff\xff\xff\xff\x41\x00\x37\x00\x38\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\xff\xff\xff\xff\x41\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x54\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x2c\x00\xff\xff\x2e\x00\x2f\x00\xff\xff\x54\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x37\x00\x38\x00\x39\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x2a\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x30\x00\x31\x00\x32\x00\x33\x00\xff\xff\xff\xff\xff\xff\x37\x00\x38\x00\xff\xff\xff\xff\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\xff\xff\x41\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x37\x00\x38\x00\x39\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x3f\x00\x40\x00\x41\x00\x42\x00\x43\x00\x44\x00\x45\x00\x46\x00\x47\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x2c\x00\xff\xff\x2e\x00\x2f\x00\xff\xff\x54\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x37\x00\x38\x00\x39\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x3f\x00\x40\x00\x41\x00\x42\x00\x43\x00\x44\x00\x45\x00\x46\x00\xff\xff\x48\x00\x49\x00\x4a\x00\x4b\x00\x4c\x00\x4d\x00\x4e\x00\x4f\x00\x50\x00\x51\x00\x52\x00\x53\x00\x54\x00\x2b\x00\x2c\x00\xff\xff\x2e\x00\x2f\x00\xff\xff\xff\xff\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x37\x00\x38\x00\x39\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x3f\x00\x40\x00\x41\x00\x42\x00\x43\x00\x44\x00\x45\x00\x46\x00\xff\xff\x48\x00\x49\x00\x4a\x00\x4b\x00\x4c\x00\x4d\x00\x4e\x00\x4f\x00\x50\x00\x51\x00\x52\x00\x53\x00\x2b\x00\x2c\x00\xff\xff\x2e\x00\x2f\x00\xff\xff\xff\xff\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x37\x00\x38\x00\x39\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x3f\x00\x40\x00\x41\x00\x42\x00\x43\x00\x44\x00\x45\x00\x46\x00\xff\xff\x48\x00\x49\x00\x4a\x00\x4b\x00\x4c\x00\x4d\x00\x4e\x00\x4f\x00\x50\x00\x51\x00\x52\x00\x53\x00\x2b\x00\x2c\x00\xff\xff\x2e\x00\x2f\x00\xff\xff\xff\xff\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x37\x00\x38\x00\x39\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x3f\x00\x40\x00\x41\x00\x42\x00\x43\x00\x44\x00\x45\x00\x46\x00\xff\xff\x48\x00\x49\x00\x4a\x00\x4b\x00\x4c\x00\x4d\x00\x4e\x00\x4f\x00\x50\x00\x51\x00\x52\x00\x53\x00\x2b\x00\x2c\x00\xff\xff\x2e\x00\x2f\x00\xff\xff\xff\xff\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x37\x00\x38\x00\x39\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x3f\x00\x40\x00\x41\x00\x42\x00\x43\x00\x44\x00\x45\x00\x46\x00\xff\xff\x48\x00\x49\x00\x4a\x00\x4b\x00\x4c\x00\x4d\x00\x4e\x00\x4f\x00\x50\x00\x51\x00\x52\x00\x53\x00\x2c\x00\xff\xff\x2e\x00\x2f\x00\xff\xff\xff\xff\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x37\x00\x38\x00\x39\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x3f\x00\x40\x00\x41\x00\x42\x00\x43\x00\x44\x00\x45\x00\x46\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x4c\x00\x4d\x00\x4e\x00\x4f\x00\x50\x00\x51\x00\x52\x00\x53\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\xff\xff\xff\xff\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x37\x00\x38\x00\x39\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x3f\x00\x40\x00\x41\x00\x42\x00\x43\x00\x44\x00\x45\x00\x46\x00\xff\xff\x48\x00\x49\x00\x4a\x00\x4b\x00\x4c\x00\x4d\x00\x4e\x00\x4f\x00\x50\x00\x51\x00\x52\x00\x53\x00\x2c\x00\xff\xff\x2e\x00\x2f\x00\xff\xff\xff\xff\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x37\x00\x38\x00\x39\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x3f\x00\x40\x00\x41\x00\x42\x00\x43\x00\x44\x00\x45\x00\x46\x00\xff\xff\x48\x00\x49\x00\x4a\x00\x4b\x00\x4c\x00\x4d\x00\x4e\x00\x4f\x00\x50\x00\x51\x00\x52\x00\x2c\x00\xff\xff\x2e\x00\x2f\x00\xff\xff\xff\xff\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x37\x00\x38\x00\x39\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x3f\x00\x40\x00\x41\x00\x42\x00\x43\x00\x44\x00\x2c\x00\xff\xff\x2e\x00\x2f\x00\xff\xff\xff\xff\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x37\x00\x38\x00\x39\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x3f\x00\x40\x00\x41\x00\x42\x00\x43\x00\x2c\x00\xff\xff\x2e\x00\x2f\x00\xff\xff\xff\xff\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x37\x00\x38\x00\x39\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x3f\x00\x40\x00\x41\x00\x42\x00\x2c\x00\xff\xff\x2e\x00\x2f\x00\xff\xff\xff\xff\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x37\x00\x38\x00\x39\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x3f\x00\x40\x00\x41\x00\x2c\x00\xff\xff\x2e\x00\x2f\x00\xff\xff\xff\xff\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x37\x00\x38\x00\x39\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x3f\x00\x40\x00\x2c\x00\xff\xff\x2e\x00\x2f\x00\xff\xff\xff\xff\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x37\x00\x38\x00\x39\x00\x3a\x00\x2c\x00\xff\xff\x2e\x00\x2f\x00\xff\xff\xff\xff\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x37\x00\x38\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff"#

happyTable :: HappyAddr
happyTable = HappyA# "\x00\x00\xff\xff\x19\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x10\x00\x5b\x00\x5c\x00\x16\x00\x19\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x08\x00\x03\x00\x11\x00\x12\x00\x20\x00\x09\x00\x13\x00\x04\x00\x02\x00\x0a\x00\x05\x00\x14\x00\x06\x00\x0b\x00\x0c\x00\x20\x00\x5d\x00\x0d\x00\x16\x00\x17\x00\x5a\x00\x91\x00\x8b\x00\x21\x00\x34\x00\x0e\x00\x0f\x00\x8f\x00\x17\x00\x22\x00\x23\x00\x24\x00\x25\x00\x96\x00\x21\x00\x33\x00\x26\x00\x27\x00\x16\x00\x17\x00\x22\x00\x23\x00\x24\x00\x25\x00\x93\x00\x17\x00\x28\x00\x26\x00\x27\x00\x19\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x32\x00\x28\x00\x97\x00\x17\x00\x5e\x00\x35\x00\x93\x00\x36\x00\x37\x00\x29\x00\x97\x00\x38\x00\x39\x00\x3a\x00\x3b\x00\x20\x00\x3d\x00\x99\x00\x17\x00\x99\x00\x29\x00\x16\x00\x17\x00\x19\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x8f\x00\x8e\x00\x95\x00\x02\x00\x21\x00\x14\x00\x30\x00\x2f\x00\x2e\x00\x2d\x00\x22\x00\x23\x00\x24\x00\x25\x00\x2c\x00\x20\x00\x2b\x00\x26\x00\x27\x00\x35\x00\x2a\x00\x36\x00\x37\x00\x29\x00\x83\x00\x38\x00\x39\x00\x28\x00\x82\x00\x81\x00\x80\x00\x7f\x00\x9b\x00\x7e\x00\x21\x00\x7d\x00\x7c\x00\x7b\x00\x7a\x00\x79\x00\x22\x00\x23\x00\x24\x00\x25\x00\x78\x00\x77\x00\x29\x00\x26\x00\x27\x00\x19\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x76\x00\x28\x00\x75\x00\x74\x00\x19\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x73\x00\x72\x00\x71\x00\x70\x00\x20\x00\x6f\x00\x6e\x00\x6d\x00\x6c\x00\x29\x00\x6b\x00\x6a\x00\x69\x00\x68\x00\x67\x00\x20\x00\x66\x00\x65\x00\x64\x00\x63\x00\x62\x00\x61\x00\x9d\x00\x21\x00\x60\x00\x5f\x00\x5e\x00\x8c\x00\x8b\x00\x22\x00\x23\x00\x24\x00\x25\x00\x91\x00\x21\x00\x9b\x00\x26\x00\x27\x00\x00\x00\x00\x00\x22\x00\x23\x00\x24\x00\x25\x00\x00\x00\x00\x00\x28\x00\x26\x00\x27\x00\x19\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x00\x00\x00\x00\x00\x00\x28\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x29\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x35\x00\x00\x00\x36\x00\x37\x00\x00\x00\x29\x00\x38\x00\x39\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x3f\x00\x40\x00\x41\x00\x42\x00\x43\x00\x44\x00\x21\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x22\x00\x23\x00\x24\x00\x25\x00\x00\x00\x00\x00\x00\x00\x26\x00\x27\x00\x00\x00\x00\x00\xec\xff\x35\x00\xec\xff\x36\x00\x37\x00\x00\x00\x28\x00\x38\x00\x39\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x3f\x00\x40\x00\x41\x00\x42\x00\x43\x00\x44\x00\x45\x00\x46\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x4c\x00\xec\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x35\x00\x00\x00\x36\x00\x37\x00\x00\x00\xec\xff\x38\x00\x39\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x3f\x00\x40\x00\x41\x00\x42\x00\x43\x00\x44\x00\x45\x00\x46\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x4c\x00\x00\x00\x4d\x00\x4e\x00\x4f\x00\x50\x00\x51\x00\x52\x00\x53\x00\x54\x00\x55\x00\x56\x00\x57\x00\x58\x00\x59\x00\x85\x00\x35\x00\x00\x00\x36\x00\x37\x00\x00\x00\x00\x00\x38\x00\x39\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x3f\x00\x40\x00\x41\x00\x42\x00\x43\x00\x44\x00\x45\x00\x46\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x4c\x00\x00\x00\x4d\x00\x4e\x00\x4f\x00\x50\x00\x51\x00\x52\x00\x53\x00\x54\x00\x55\x00\x56\x00\x57\x00\x58\x00\x88\x00\x35\x00\x00\x00\x36\x00\x37\x00\x00\x00\x00\x00\x38\x00\x39\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x3f\x00\x40\x00\x41\x00\x42\x00\x43\x00\x44\x00\x45\x00\x46\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x4c\x00\x00\x00\x4d\x00\x4e\x00\x4f\x00\x50\x00\x51\x00\x52\x00\x53\x00\x54\x00\x55\x00\x56\x00\x57\x00\x58\x00\x87\x00\x35\x00\x00\x00\x36\x00\x37\x00\x00\x00\x00\x00\x38\x00\x39\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x3f\x00\x40\x00\x41\x00\x42\x00\x43\x00\x44\x00\x45\x00\x46\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x4c\x00\x00\x00\x4d\x00\x4e\x00\x4f\x00\x50\x00\x51\x00\x52\x00\x53\x00\x54\x00\x55\x00\x56\x00\x57\x00\x58\x00\x86\x00\x35\x00\x00\x00\x36\x00\x37\x00\x00\x00\x00\x00\x38\x00\x39\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x3f\x00\x40\x00\x41\x00\x42\x00\x43\x00\x44\x00\x45\x00\x46\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x4c\x00\x00\x00\x4d\x00\x4e\x00\x4f\x00\x50\x00\x51\x00\x52\x00\x53\x00\x54\x00\x55\x00\x56\x00\x57\x00\x58\x00\x35\x00\x00\x00\x36\x00\x37\x00\x00\x00\x00\x00\x38\x00\x39\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x3f\x00\x40\x00\x41\x00\x42\x00\x43\x00\x44\x00\x45\x00\x46\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x4c\x00\x8a\x00\x4d\x00\x4e\x00\x4f\x00\x50\x00\x51\x00\x52\x00\x53\x00\x54\x00\x55\x00\x56\x00\x57\x00\x58\x00\x35\x00\x89\x00\x36\x00\x37\x00\x00\x00\x00\x00\x38\x00\x39\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x3f\x00\x40\x00\x41\x00\x42\x00\x43\x00\x44\x00\x45\x00\x46\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x4c\x00\x00\x00\x4d\x00\x4e\x00\x4f\x00\x50\x00\x51\x00\x52\x00\x53\x00\x54\x00\x55\x00\x56\x00\x57\x00\x58\x00\x35\x00\x00\x00\x36\x00\x37\x00\x00\x00\x00\x00\x38\x00\x39\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x3f\x00\x40\x00\x41\x00\x42\x00\x43\x00\x44\x00\x45\x00\x46\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x4c\x00\x00\x00\x4d\x00\x4e\x00\x4f\x00\x50\x00\x51\x00\x52\x00\x53\x00\x54\x00\x55\x00\x56\x00\x57\x00\x35\x00\x00\x00\x36\x00\x37\x00\x00\x00\x00\x00\x38\x00\x39\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x3f\x00\x40\x00\x41\x00\x42\x00\x43\x00\x44\x00\x45\x00\x46\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x35\x00\x00\x00\x36\x00\x37\x00\x00\x00\x00\x00\x38\x00\x39\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x3f\x00\x40\x00\x41\x00\x42\x00\x43\x00\x44\x00\x45\x00\x46\x00\x47\x00\x48\x00\x49\x00\x35\x00\x00\x00\x36\x00\x37\x00\x00\x00\x00\x00\x38\x00\x39\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x3f\x00\x40\x00\x41\x00\x42\x00\x43\x00\x44\x00\x45\x00\x46\x00\x47\x00\x48\x00\x35\x00\x00\x00\x36\x00\x37\x00\x00\x00\x00\x00\x38\x00\x39\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x3f\x00\x40\x00\x41\x00\x42\x00\x43\x00\x44\x00\x45\x00\x46\x00\x47\x00\x35\x00\x00\x00\x36\x00\x37\x00\x00\x00\x00\x00\x38\x00\x39\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x3f\x00\x40\x00\x41\x00\x42\x00\x43\x00\x44\x00\x45\x00\x46\x00\x35\x00\x00\x00\x36\x00\x37\x00\x00\x00\x00\x00\x38\x00\x39\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x3f\x00\x40\x00\x35\x00\x00\x00\x36\x00\x37\x00\x00\x00\x00\x00\x38\x00\x39\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyReduceArr = Happy_Data_Array.array (1, 84) [
	(1 , happyReduce_1),
	(2 , happyReduce_2),
	(3 , happyReduce_3),
	(4 , happyReduce_4),
	(5 , happyReduce_5),
	(6 , happyReduce_6),
	(7 , happyReduce_7),
	(8 , happyReduce_8),
	(9 , happyReduce_9),
	(10 , happyReduce_10),
	(11 , happyReduce_11),
	(12 , happyReduce_12),
	(13 , happyReduce_13),
	(14 , happyReduce_14),
	(15 , happyReduce_15),
	(16 , happyReduce_16),
	(17 , happyReduce_17),
	(18 , happyReduce_18),
	(19 , happyReduce_19),
	(20 , happyReduce_20),
	(21 , happyReduce_21),
	(22 , happyReduce_22),
	(23 , happyReduce_23),
	(24 , happyReduce_24),
	(25 , happyReduce_25),
	(26 , happyReduce_26),
	(27 , happyReduce_27),
	(28 , happyReduce_28),
	(29 , happyReduce_29),
	(30 , happyReduce_30),
	(31 , happyReduce_31),
	(32 , happyReduce_32),
	(33 , happyReduce_33),
	(34 , happyReduce_34),
	(35 , happyReduce_35),
	(36 , happyReduce_36),
	(37 , happyReduce_37),
	(38 , happyReduce_38),
	(39 , happyReduce_39),
	(40 , happyReduce_40),
	(41 , happyReduce_41),
	(42 , happyReduce_42),
	(43 , happyReduce_43),
	(44 , happyReduce_44),
	(45 , happyReduce_45),
	(46 , happyReduce_46),
	(47 , happyReduce_47),
	(48 , happyReduce_48),
	(49 , happyReduce_49),
	(50 , happyReduce_50),
	(51 , happyReduce_51),
	(52 , happyReduce_52),
	(53 , happyReduce_53),
	(54 , happyReduce_54),
	(55 , happyReduce_55),
	(56 , happyReduce_56),
	(57 , happyReduce_57),
	(58 , happyReduce_58),
	(59 , happyReduce_59),
	(60 , happyReduce_60),
	(61 , happyReduce_61),
	(62 , happyReduce_62),
	(63 , happyReduce_63),
	(64 , happyReduce_64),
	(65 , happyReduce_65),
	(66 , happyReduce_66),
	(67 , happyReduce_67),
	(68 , happyReduce_68),
	(69 , happyReduce_69),
	(70 , happyReduce_70),
	(71 , happyReduce_71),
	(72 , happyReduce_72),
	(73 , happyReduce_73),
	(74 , happyReduce_74),
	(75 , happyReduce_75),
	(76 , happyReduce_76),
	(77 , happyReduce_77),
	(78 , happyReduce_78),
	(79 , happyReduce_79),
	(80 , happyReduce_80),
	(81 , happyReduce_81),
	(82 , happyReduce_82),
	(83 , happyReduce_83),
	(84 , happyReduce_84)
	]

happy_n_terms = 86 :: Int
happy_n_nonterms = 8 :: Int

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_1 = happySpecReduce_2  0# happyReduction_1
happyReduction_1 happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	case happyOut5 happy_x_2 of { happy_var_2 -> 
	happyIn4
		 (Prg (reverse happy_var_1) happy_var_2
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_2 = happySpecReduce_0  1# happyReduction_2
happyReduction_2  =  happyIn5
		 (Nop
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_3 = happySpecReduce_2  1# happyReduction_3
happyReduction_3 happy_x_2
	happy_x_1
	 =  case happyOut5 happy_x_1 of { happy_var_1 -> 
	case happyOut6 happy_x_2 of { happy_var_2 -> 
	happyIn5
		 (AndThenStmt happy_var_1 happy_var_2
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_4 = happySpecReduce_1  2# happyReduction_4
happyReduction_4 happy_x_1
	 =  happyIn6
		 (Nop
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_5 = happySpecReduce_2  2# happyReduction_5
happyReduction_5 happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	happyIn6
		 (ExprStmt happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_6 = happyReduce 5# 2# happyReduction_6
happyReduction_6 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn6
		 (Print happy_var_3
	) `HappyStk` happyRest}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_7 = happyReduce 5# 2# happyReduction_7
happyReduction_7 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn6
		 (Read happy_var_3
	) `HappyStk` happyRest}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_8 = happyReduce 5# 2# happyReduction_8
happyReduction_8 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut7 happy_x_3 of { happy_var_3 -> 
	case happyOut6 happy_x_5 of { happy_var_5 -> 
	happyIn6
		 (IfStmt happy_var_3 happy_var_5 Nop
	) `HappyStk` happyRest}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_9 = happyReduce 7# 2# happyReduction_9
happyReduction_9 (happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut7 happy_x_3 of { happy_var_3 -> 
	case happyOut5 happy_x_6 of { happy_var_6 -> 
	happyIn6
		 (IfStmt happy_var_3 happy_var_6 Nop
	) `HappyStk` happyRest}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_10 = happyReduce 7# 2# happyReduction_10
happyReduction_10 (happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut7 happy_x_3 of { happy_var_3 -> 
	case happyOut6 happy_x_5 of { happy_var_5 -> 
	case happyOut6 happy_x_7 of { happy_var_7 -> 
	happyIn6
		 (IfStmt happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_11 = happyReduce 9# 2# happyReduction_11
happyReduction_11 (happy_x_9 `HappyStk`
	happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut7 happy_x_3 of { happy_var_3 -> 
	case happyOut6 happy_x_5 of { happy_var_5 -> 
	case happyOut6 happy_x_8 of { happy_var_8 -> 
	happyIn6
		 (IfStmt happy_var_3 happy_var_5 happy_var_8
	) `HappyStk` happyRest}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_12 = happyReduce 9# 2# happyReduction_12
happyReduction_12 (happy_x_9 `HappyStk`
	happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut7 happy_x_3 of { happy_var_3 -> 
	case happyOut5 happy_x_6 of { happy_var_6 -> 
	case happyOut6 happy_x_9 of { happy_var_9 -> 
	happyIn6
		 (IfStmt happy_var_3 happy_var_6 happy_var_9
	) `HappyStk` happyRest}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_13 = happyReduce 11# 2# happyReduction_13
happyReduction_13 (happy_x_11 `HappyStk`
	happy_x_10 `HappyStk`
	happy_x_9 `HappyStk`
	happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut7 happy_x_3 of { happy_var_3 -> 
	case happyOut5 happy_x_6 of { happy_var_6 -> 
	case happyOut5 happy_x_10 of { happy_var_10 -> 
	happyIn6
		 (IfStmt happy_var_3 happy_var_6 happy_var_10
	) `HappyStk` happyRest}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_14 = happySpecReduce_1  3# happyReduction_14
happyReduction_14 happy_x_1
	 =  case happyOutTok happy_x_1 of { (Identifier happy_var_1) -> 
	happyIn7
		 (Variable happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_15 = happySpecReduce_1  3# happyReduction_15
happyReduction_15 happy_x_1
	 =  case happyOutTok happy_x_1 of { (LiteralInteger happy_var_1) -> 
	happyIn7
		 (ConstantInt happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_16 = happySpecReduce_1  3# happyReduction_16
happyReduction_16 happy_x_1
	 =  case happyOutTok happy_x_1 of { (LiteralFloat happy_var_1) -> 
	happyIn7
		 (ConstantDouble happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_17 = happySpecReduce_1  3# happyReduction_17
happyReduction_17 happy_x_1
	 =  case happyOutTok happy_x_1 of { (LiteralString happy_var_1) -> 
	happyIn7
		 (ConstantString happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_18 = happySpecReduce_1  3# happyReduction_18
happyReduction_18 happy_x_1
	 =  case happyOutTok happy_x_1 of { (LiteralChar happy_var_1) -> 
	happyIn7
		 (ConstantChar happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_19 = happyReduce 5# 3# happyReduction_19
happyReduction_19 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	case happyOut7 happy_x_5 of { happy_var_5 -> 
	happyIn7
		 (Ternop "?:" happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_20 = happySpecReduce_3  3# happyReduction_20
happyReduction_20 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_2 of { happy_var_2 -> 
	happyIn7
		 (happy_var_2
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_21 = happyReduce 4# 3# happyReduction_21
happyReduction_21 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn7
		 (Binop "[" happy_var_1 happy_var_3
	) `HappyStk` happyRest}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_22 = happySpecReduce_2  3# happyReduction_22
happyReduction_22 happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_2 of { happy_var_2 -> 
	happyIn7
		 (Monop "!" happy_var_2
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_23 = happySpecReduce_2  3# happyReduction_23
happyReduction_23 happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_2 of { happy_var_2 -> 
	happyIn7
		 (Monop "++." happy_var_2
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_24 = happySpecReduce_2  3# happyReduction_24
happyReduction_24 happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_2 of { happy_var_2 -> 
	happyIn7
		 (Monop "--." happy_var_2
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_25 = happySpecReduce_2  3# happyReduction_25
happyReduction_25 happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	happyIn7
		 (Monop ".++" happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_26 = happySpecReduce_2  3# happyReduction_26
happyReduction_26 happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	happyIn7
		 (Monop ".--" happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_27 = happySpecReduce_2  3# happyReduction_27
happyReduction_27 happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_2 of { happy_var_2 -> 
	happyIn7
		 (Monop "~" happy_var_2
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_28 = happySpecReduce_2  3# happyReduction_28
happyReduction_28 happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_2 of { happy_var_2 -> 
	happyIn7
		 (Monop "-" happy_var_2
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_29 = happySpecReduce_2  3# happyReduction_29
happyReduction_29 happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_2 of { happy_var_2 -> 
	happyIn7
		 (Monop "&" happy_var_2
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_30 = happySpecReduce_2  3# happyReduction_30
happyReduction_30 happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_2 of { happy_var_2 -> 
	happyIn7
		 (Monop "*" happy_var_2
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_31 = happyReduce 5# 3# happyReduction_31
happyReduction_31 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	case happyOut7 happy_x_5 of { happy_var_5 -> 
	happyIn7
		 (Ternop "?:" happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_32 = happySpecReduce_3  3# happyReduction_32
happyReduction_32 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn7
		 (Binop "->" happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_33 = happySpecReduce_3  3# happyReduction_33
happyReduction_33 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn7
		 (Binop "." happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_34 = happySpecReduce_3  3# happyReduction_34
happyReduction_34 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn7
		 (Binop "/" happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_35 = happySpecReduce_3  3# happyReduction_35
happyReduction_35 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn7
		 (Binop "%" happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_36 = happySpecReduce_3  3# happyReduction_36
happyReduction_36 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn7
		 (Binop "+" happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_37 = happySpecReduce_3  3# happyReduction_37
happyReduction_37 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn7
		 (Binop "-" happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_38 = happySpecReduce_3  3# happyReduction_38
happyReduction_38 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn7
		 (Binop "*" happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_39 = happySpecReduce_3  3# happyReduction_39
happyReduction_39 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn7
		 (Binop "<<" happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_40 = happySpecReduce_3  3# happyReduction_40
happyReduction_40 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn7
		 (Binop ">>" happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_41 = happySpecReduce_3  3# happyReduction_41
happyReduction_41 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn7
		 (Binop "<" happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_42 = happySpecReduce_3  3# happyReduction_42
happyReduction_42 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn7
		 (Binop "<=" happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_43 = happySpecReduce_3  3# happyReduction_43
happyReduction_43 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn7
		 (Binop ">" happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_44 = happySpecReduce_3  3# happyReduction_44
happyReduction_44 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn7
		 (Binop ">=" happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_45 = happySpecReduce_3  3# happyReduction_45
happyReduction_45 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn7
		 (Binop "==" happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_46 = happySpecReduce_3  3# happyReduction_46
happyReduction_46 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn7
		 (Binop "!=" happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_47 = happySpecReduce_3  3# happyReduction_47
happyReduction_47 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn7
		 (Binop "&" happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_48 = happySpecReduce_3  3# happyReduction_48
happyReduction_48 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn7
		 (Binop "^" happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_49 = happySpecReduce_3  3# happyReduction_49
happyReduction_49 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn7
		 (Binop "|" happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_50 = happySpecReduce_3  3# happyReduction_50
happyReduction_50 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn7
		 (Binop "&&" happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_51 = happySpecReduce_3  3# happyReduction_51
happyReduction_51 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn7
		 (Binop "||" happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_52 = happySpecReduce_3  3# happyReduction_52
happyReduction_52 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn7
		 (Binop "=" happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_53 = happySpecReduce_3  3# happyReduction_53
happyReduction_53 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn7
		 (Binop "+=" happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_54 = happySpecReduce_3  3# happyReduction_54
happyReduction_54 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn7
		 (Binop "-=" happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_55 = happySpecReduce_3  3# happyReduction_55
happyReduction_55 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn7
		 (Binop "*=" happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_56 = happySpecReduce_3  3# happyReduction_56
happyReduction_56 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn7
		 (Binop "/=" happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_57 = happySpecReduce_3  3# happyReduction_57
happyReduction_57 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn7
		 (Binop "%=" happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_58 = happySpecReduce_3  3# happyReduction_58
happyReduction_58 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn7
		 (Binop ">>=" happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_59 = happySpecReduce_3  3# happyReduction_59
happyReduction_59 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn7
		 (Binop "<<=" happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_60 = happySpecReduce_3  3# happyReduction_60
happyReduction_60 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn7
		 (Binop "&=" happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_61 = happySpecReduce_3  3# happyReduction_61
happyReduction_61 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn7
		 (Binop "^=" happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_62 = happySpecReduce_3  3# happyReduction_62
happyReduction_62 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn7
		 (Binop "|=" happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_63 = happySpecReduce_3  3# happyReduction_63
happyReduction_63 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn7
		 (Binop "," happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_64 = happySpecReduce_1  4# happyReduction_64
happyReduction_64 happy_x_1
	 =  happyIn8
		 (Void
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_65 = happySpecReduce_1  4# happyReduction_65
happyReduction_65 happy_x_1
	 =  happyIn8
		 (Char
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_66 = happySpecReduce_1  4# happyReduction_66
happyReduction_66 happy_x_1
	 =  happyIn8
		 (Short
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_67 = happySpecReduce_1  4# happyReduction_67
happyReduction_67 happy_x_1
	 =  happyIn8
		 (Int
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_68 = happySpecReduce_1  4# happyReduction_68
happyReduction_68 happy_x_1
	 =  happyIn8
		 (Long
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_69 = happySpecReduce_2  4# happyReduction_69
happyReduction_69 happy_x_2
	happy_x_1
	 =  happyIn8
		 (LongLong
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_70 = happySpecReduce_1  4# happyReduction_70
happyReduction_70 happy_x_1
	 =  happyIn8
		 (Float
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_71 = happySpecReduce_1  4# happyReduction_71
happyReduction_71 happy_x_1
	 =  happyIn8
		 (Double
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_72 = happySpecReduce_2  4# happyReduction_72
happyReduction_72 happy_x_2
	happy_x_1
	 =  happyIn8
		 (UnsignedInt
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_73 = happySpecReduce_2  4# happyReduction_73
happyReduction_73 happy_x_2
	happy_x_1
	 =  happyIn8
		 (UnsignedChar
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_74 = happySpecReduce_2  4# happyReduction_74
happyReduction_74 happy_x_2
	happy_x_1
	 =  happyIn8
		 (UnsignedLong
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_75 = happySpecReduce_2  4# happyReduction_75
happyReduction_75 happy_x_2
	happy_x_1
	 =  happyIn8
		 (UnsignedShort
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_76 = happySpecReduce_3  4# happyReduction_76
happyReduction_76 happy_x_3
	happy_x_2
	happy_x_1
	 =  happyIn8
		 (UnsignedLongLong
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_77 = happySpecReduce_0  5# happyReduction_77
happyReduction_77  =  happyIn9
		 ([]
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_78 = happySpecReduce_1  5# happyReduction_78
happyReduction_78 happy_x_1
	 =  case happyOutTok happy_x_1 of { (Identifier happy_var_1) -> 
	happyIn9
		 ([(happy_var_1, Nothing)]
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_79 = happySpecReduce_3  5# happyReduction_79
happyReduction_79 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_1 of { (Identifier happy_var_1) -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn9
		 ([(happy_var_1, Just happy_var_3)]
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_80 = happySpecReduce_3  5# happyReduction_80
happyReduction_80 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut9 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_3 of { (Identifier happy_var_3) -> 
	happyIn9
		 ((happy_var_3, Nothing) : happy_var_1
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_81 = happyReduce 5# 5# happyReduction_81
happyReduction_81 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut9 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_3 of { (Identifier happy_var_3) -> 
	case happyOut7 happy_x_5 of { happy_var_5 -> 
	happyIn9
		 ((happy_var_3, Just happy_var_5) : happy_var_1
	) `HappyStk` happyRest}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_82 = happySpecReduce_3  6# happyReduction_82
happyReduction_82 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut8 happy_x_1 of { happy_var_1 -> 
	case happyOut9 happy_x_2 of { happy_var_2 -> 
	happyIn10
		 (VarDecl happy_var_1 (reverse happy_var_2)
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_83 = happySpecReduce_0  7# happyReduction_83
happyReduction_83  =  happyIn11
		 ([]
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_84 = happySpecReduce_2  7# happyReduction_84
happyReduction_84 happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	case happyOut10 happy_x_2 of { happy_var_2 -> 
	happyIn11
		 (happy_var_2 : happy_var_1
	)}}

happyNewToken action sts stk [] =
	happyDoAction 85# notHappyAtAll action sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = happyDoAction i tk action sts stk tks in
	case tk of {
	LiteralInteger happy_dollar_dollar -> cont 1#;
	LiteralString happy_dollar_dollar -> cont 2#;
	LiteralFloat happy_dollar_dollar -> cont 3#;
	LiteralChar happy_dollar_dollar -> cont 4#;
	Identifier happy_dollar_dollar -> cont 5#;
	Keyword "print" -> cont 6#;
	Keyword "read" -> cont 7#;
	Keyword "auto" -> cont 8#;
	Keyword "break" -> cont 9#;
	Keyword "case" -> cont 10#;
	Keyword "char" -> cont 11#;
	Keyword "const" -> cont 12#;
	Keyword "continue" -> cont 13#;
	Keyword "default" -> cont 14#;
	Keyword "do" -> cont 15#;
	Keyword "double" -> cont 16#;
	Keyword "else" -> cont 17#;
	Keyword "enum" -> cont 18#;
	Keyword "extern" -> cont 19#;
	Keyword "float" -> cont 20#;
	Keyword "for" -> cont 21#;
	Keyword "goto" -> cont 22#;
	Keyword "if" -> cont 23#;
	Keyword "int" -> cont 24#;
	Keyword "long" -> cont 25#;
	Keyword "register" -> cont 26#;
	Keyword "return" -> cont 27#;
	Keyword "short" -> cont 28#;
	Keyword "signed" -> cont 29#;
	Keyword "sizeof" -> cont 30#;
	Keyword "static" -> cont 31#;
	Keyword "struct" -> cont 32#;
	Keyword "switch" -> cont 33#;
	Keyword "typedef" -> cont 34#;
	Keyword "union" -> cont 35#;
	Keyword "unsigned" -> cont 36#;
	Keyword "void" -> cont 37#;
	Keyword "volatile" -> cont 38#;
	Keyword "while" -> cont 39#;
	Punctuation "{" -> cont 40#;
	Punctuation "}" -> cont 41#;
	Punctuation "(" -> cont 42#;
	Punctuation ")" -> cont 43#;
	Punctuation "[" -> cont 44#;
	Punctuation "]" -> cont 45#;
	Punctuation "->" -> cont 46#;
	Punctuation "." -> cont 47#;
	Punctuation "!" -> cont 48#;
	Punctuation "~" -> cont 49#;
	Punctuation "++" -> cont 50#;
	Punctuation "--" -> cont 51#;
	Punctuation "/" -> cont 52#;
	Punctuation "%" -> cont 53#;
	Punctuation "+" -> cont 54#;
	Punctuation "*" -> cont 55#;
	Punctuation "-" -> cont 56#;
	Punctuation "<<" -> cont 57#;
	Punctuation ">>" -> cont 58#;
	Punctuation "<" -> cont 59#;
	Punctuation "<=" -> cont 60#;
	Punctuation ">" -> cont 61#;
	Punctuation ">=" -> cont 62#;
	Punctuation "==" -> cont 63#;
	Punctuation "!=" -> cont 64#;
	Punctuation "&" -> cont 65#;
	Punctuation "^" -> cont 66#;
	Punctuation "|" -> cont 67#;
	Punctuation "&&" -> cont 68#;
	Punctuation "||" -> cont 69#;
	Punctuation "?" -> cont 70#;
	Punctuation ":" -> cont 71#;
	Punctuation "=" -> cont 72#;
	Punctuation "+=" -> cont 73#;
	Punctuation "-=" -> cont 74#;
	Punctuation "*=" -> cont 75#;
	Punctuation "/=" -> cont 76#;
	Punctuation "%=" -> cont 77#;
	Punctuation ">>=" -> cont 78#;
	Punctuation "<<=" -> cont 79#;
	Punctuation "&=" -> cont 80#;
	Punctuation "^=" -> cont 81#;
	Punctuation "|=" -> cont 82#;
	Punctuation "," -> cont 83#;
	Punctuation ";" -> cont 84#;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 85# tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parse tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse 0# tks) (\x -> happyReturn (happyOut4 x))

happySeq = happyDontSeq


parseError _ = error "Parse Error"
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 18 "<built-in>" #-}
{-# LINE 1 "/usr/local/Cellar/ghc/8.4.4/lib/ghc-8.4.4/include/ghcversion.h" #-}
















{-# LINE 19 "<built-in>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 













-- Do not remove this comment. Required to fix CPP parsing when using GCC and a clang-compiled alex.
#if __GLASGOW_HASKELL__ > 706
#define LT(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.<# m)) :: Bool)
#define GTE(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.>=# m)) :: Bool)
#define EQ(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.==# m)) :: Bool)
#else
#define LT(n,m) (n Happy_GHC_Exts.<# m)
#define GTE(n,m) (n Happy_GHC_Exts.>=# m)
#define EQ(n,m) (n Happy_GHC_Exts.==# m)
#endif

{-# LINE 43 "templates/GenericTemplate.hs" #-}

data Happy_IntList = HappyCons Happy_GHC_Exts.Int# Happy_IntList








{-# LINE 65 "templates/GenericTemplate.hs" #-}


{-# LINE 75 "templates/GenericTemplate.hs" #-}










infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is 0#, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept 0# tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
        (happyTcHack j (happyTcHack st)) (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action



happyDoAction i tk st
        = {- nothing -}
          

          case action of
                0#           -> {- nothing -}
                                     happyFail (happyExpListPerState ((Happy_GHC_Exts.I# (st)) :: Int)) i tk st
                -1#          -> {- nothing -}
                                     happyAccept i tk st
                n | LT(n,(0# :: Happy_GHC_Exts.Int#)) -> {- nothing -}
                                                   
                                                   (happyReduceArr Happy_Data_Array.! rule) i tk st
                                                   where rule = (Happy_GHC_Exts.I# ((Happy_GHC_Exts.negateInt# ((n Happy_GHC_Exts.+# (1# :: Happy_GHC_Exts.Int#))))))
                n                 -> {- nothing -}
                                     

                                     happyShift new_state i tk st
                                     where new_state = (n Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#))
   where off    = happyAdjustOffset (indexShortOffAddr happyActOffsets st)
         off_i  = (off Happy_GHC_Exts.+#  i)
         check  = if GTE(off_i,(0# :: Happy_GHC_Exts.Int#))
                  then EQ(indexShortOffAddr happyCheck off_i, i)
                  else False
         action
          | check     = indexShortOffAddr happyTable off_i
          | otherwise = indexShortOffAddr happyDefActions st




indexShortOffAddr (HappyA# arr) off =
        Happy_GHC_Exts.narrow16Int# i
  where
        i = Happy_GHC_Exts.word2Int# (Happy_GHC_Exts.or# (Happy_GHC_Exts.uncheckedShiftL# high 8#) low)
        high = Happy_GHC_Exts.int2Word# (Happy_GHC_Exts.ord# (Happy_GHC_Exts.indexCharOffAddr# arr (off' Happy_GHC_Exts.+# 1#)))
        low  = Happy_GHC_Exts.int2Word# (Happy_GHC_Exts.ord# (Happy_GHC_Exts.indexCharOffAddr# arr off'))
        off' = off Happy_GHC_Exts.*# 2#




{-# INLINE happyLt #-}
happyLt x y = LT(x,y)


readArrayBit arr bit =
    Bits.testBit (Happy_GHC_Exts.I# (indexShortOffAddr arr ((unbox_int bit) `Happy_GHC_Exts.iShiftRA#` 4#))) (bit `mod` 16)
  where unbox_int (Happy_GHC_Exts.I# x) = x






data HappyAddr = HappyA# Happy_GHC_Exts.Addr#


-----------------------------------------------------------------------------
-- HappyState data type (not arrays)


{-# LINE 180 "templates/GenericTemplate.hs" #-}

-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state 0# tk st sts stk@(x `HappyStk` _) =
     let i = (case Happy_GHC_Exts.unsafeCoerce# x of { (Happy_GHC_Exts.I# (i)) -> i }) in
--     trace "shifting the error token" $
     happyDoAction i tk new_state (HappyCons (st) (sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state (HappyCons (st) (sts)) ((happyInTok (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happySpecReduce_0 nt fn j tk st@((action)) sts stk
     = happyGoto nt j tk st (HappyCons (st) (sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@((HappyCons (st@(action)) (_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happySpecReduce_2 nt fn j tk _ (HappyCons (_) (sts@((HappyCons (st@(action)) (_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happySpecReduce_3 nt fn j tk _ (HappyCons (_) ((HappyCons (_) (sts@((HappyCons (st@(action)) (_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#)) sts of
         sts1@((HappyCons (st1@(action)) (_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (happyGoto nt j tk st1 sts1 r)

happyMonadReduce k nt fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k (HappyCons (st) (sts)) of
        sts1@((HappyCons (st1@(action)) (_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> happyGoto nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k (HappyCons (st) (sts)) of
        sts1@((HappyCons (st1@(action)) (_))) ->
         let drop_stk = happyDropStk k stk

             off = happyAdjustOffset (indexShortOffAddr happyGotoOffsets st1)
             off_i = (off Happy_GHC_Exts.+#  nt)
             new_state = indexShortOffAddr happyTable off_i




          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop 0# l = l
happyDrop n (HappyCons (_) (t)) = happyDrop (n Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#)) t

happyDropStk 0# l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Happy_GHC_Exts.-# (1#::Happy_GHC_Exts.Int#)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction


happyGoto nt j tk st = 
   {- nothing -}
   happyDoAction j tk new_state
   where off = happyAdjustOffset (indexShortOffAddr happyGotoOffsets st)
         off_i = (off Happy_GHC_Exts.+#  nt)
         new_state = indexShortOffAddr happyTable off_i




-----------------------------------------------------------------------------
-- Error recovery (0# is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist 0# tk old_st _ stk@(x `HappyStk` _) =
     let i = (case Happy_GHC_Exts.unsafeCoerce# x of { (Happy_GHC_Exts.I# (i)) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  0# tk old_st (HappyCons ((action)) (sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        happyDoAction 0# tk action sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (action) sts stk =
--      trace "entering error recovery" $
        happyDoAction 0# tk action sts ( (Happy_GHC_Exts.unsafeCoerce# (Happy_GHC_Exts.I# (i))) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions


happyTcHack :: Happy_GHC_Exts.Int# -> a -> a
happyTcHack x y = y
{-# INLINE happyTcHack #-}


-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.


{-# NOINLINE happyDoAction #-}
{-# NOINLINE happyTable #-}
{-# NOINLINE happyCheck #-}
{-# NOINLINE happyActOffsets #-}
{-# NOINLINE happyGotoOffsets #-}
{-# NOINLINE happyDefActions #-}

{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.

