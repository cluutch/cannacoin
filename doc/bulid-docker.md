docker build --progress=plain -t cluutch/cannacoin .
QT_GRAPHICSSYSTEM="native" docker run -it -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix cluutch/cannacoin
