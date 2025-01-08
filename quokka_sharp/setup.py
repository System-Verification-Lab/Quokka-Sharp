from setuptools import setup, find_packages

VERSION = '2.3'
DESCRIPTION = 'Quokka Sharp'
LONG_DESCRIPTION = '''
                    Quokka Sharp for simulating and equivalence checking 
                    of quantum circuits based on weighted model counting.
                    You have to intall a weighted model counting tool first.
                    Please refer to https://github.com/System-Verification-Lab/Quokka-Sharp for more details.
                    '''

setup(
    name='quokka_sharp',
    version=VERSION,
    author='System Verification Lab',
    author_email='j.mei@liacs.leidenuniv.nl',
    description=DESCRIPTION,
    long_description=LONG_DESCRIPTION,
    packages=find_packages(),
    keywords=['python', 'quantum circuits'],
    classifiers=[
            "Programming Language :: Python :: 3",
            "Programming Language :: Python :: 3.8",
            "Programming Language :: Python :: 3.9",
            "Programming Language :: Python :: 3.10",
            "Operating System :: MacOS :: MacOS X",
            "Operating System :: Microsoft :: Windows"  
    ],
    install_requires=[],
    include_package_data=True
)