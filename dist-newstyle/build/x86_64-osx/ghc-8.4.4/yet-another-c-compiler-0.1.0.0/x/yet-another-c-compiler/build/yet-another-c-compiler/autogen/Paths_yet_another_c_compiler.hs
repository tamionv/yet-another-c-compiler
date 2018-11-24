{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_yet_another_c_compiler (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/tvn/.cabal/bin"
libdir     = "/Users/tvn/.cabal/lib/x86_64-osx-ghc-8.4.4/yet-another-c-compiler-0.1.0.0-inplace-yet-another-c-compiler"
dynlibdir  = "/Users/tvn/.cabal/lib/x86_64-osx-ghc-8.4.4"
datadir    = "/Users/tvn/.cabal/share/x86_64-osx-ghc-8.4.4/yet-another-c-compiler-0.1.0.0"
libexecdir = "/Users/tvn/.cabal/libexec/x86_64-osx-ghc-8.4.4/yet-another-c-compiler-0.1.0.0"
sysconfdir = "/Users/tvn/.cabal/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "yet_another_c_compiler_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "yet_another_c_compiler_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "yet_another_c_compiler_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "yet_another_c_compiler_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "yet_another_c_compiler_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "yet_another_c_compiler_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
