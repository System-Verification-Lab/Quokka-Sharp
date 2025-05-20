
for f in $(find ../ -name '*.qasm'); 
do
    sed -i 's|rz(1.0\*pi)|z|g' $f
    sed -i 's|rz(3\*pi)|z|g' $f

    sed -i 's|rz(pi/2)|s|g' $f
    sed -i 's|rz(1.5\*pi)|sdg|g' $f

    sed -i 's|rz(pi/4)|t|g' $f
    sed -i 's|rz(-pi/4)|tdg|g' $f

    sed -i 's|rx(0.5\*pi)|rx(pi/2)|g' $f
done