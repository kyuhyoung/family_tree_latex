: << 'END'
#	Gauss
cd gauss; pdflatex ft_gauss.tex; cd -
END
: << 'END'
#	mutiple wives test
aidi=multi_wives
cd ${aidi}; pdflatex ${aidi}.tex; cd -
END
#: << 'END'
#	Chosun dyansty
aidi=chosun_dynasty
cd ${aidi}; pdflatex ${aidi}.tex; cd -
#END

