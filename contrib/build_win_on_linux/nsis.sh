set -e

. scripts/include.sh


# installer
cd ~/deps/roxcoin
rm -rf nsis
mkdir nsis
git archive HEAD | tar -x -C nsis
cd nsis/src
mkdir ../release
cp ../../release/* ../release/
cp ../../src/*.exe .
makensis ../share/setup.nsi
rm -rf $OUTDIR/setup
mkdir $OUTDIR/setup
cp ../share/roxcoin-*-win32-setup.exe $OUTDIR/setup/

# results
cd $OUTDIR
rm -rf roxcoin-dist.zip
zip -r roxcoin-dist.zip setup client daemon

echo -e "\n\n"
echo "Results are in $OUTDIR/roxcoin-dist.zip"
echo -e "\n"


