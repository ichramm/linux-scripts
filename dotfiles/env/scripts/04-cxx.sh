
#export CC="clang";
#export CXX="clang++";
export CC="clang";
export CXX="clang++";

# Make "g++" command call colorgcc
test -d /usr/lib/colorgcc/bin && export PATH="/usr/lib/colorgcc/bin:$PATH"

# Tell ccache to invoke compilers in /usr/bin
export CCACHE_PATH="/usr/bin"

#
# Some cool compiler flags

export CFLAGS="-pipe" # -ggdb -Wno-address"
#export CFLAGS="$CFLAGS -march=native -mtune=native";

export CXXFLAGS="$CFLAGS";

#
# Place object files outside the source tree, always
export OBJS_ROOT=$HOME/devel/.objs;
