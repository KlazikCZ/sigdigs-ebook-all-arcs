for a in ../md-content/* ; do
	pandoc -f markdown -t latex --no-tex-ligatures  --default-image-extension=pdf --chapters --filter ./filter -o gen/`basename $a`.tex $a
	echo "Converted $a"
done

xelatex sigdigs.tex
xelatex sigdigs.tex