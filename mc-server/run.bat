@ECHO OFF
:: Forge requires a configured set of both JVM and program arguments.
:: Set path to JDK (\bin\java.exe or \bin\javaw.exe) in java_path.txt
:: Add custom JVM arguments to the user_jvm_args.txt
:: Add custom program arguments (such as nogui) to this file in the next line before the %* or pass them to this script directly

SET /P JDK=<java_path.txt

IF "%JDK%"=="" (
  ECHO JDK path not set, please define where java is installed.
  PAUSE
  java_path.txt
) ELSE (
  %JDK% @user_jvm_args.txt @libraries/net/minecraftforge/forge/1.18.2-40.1.14/win_args.txt %*
  PAUSE
)