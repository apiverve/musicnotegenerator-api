from setuptools import setup, find_packages

setup(
    name='apiverve_musicnotegenerator',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Music Note Generator is a musical note generator API that creates high-quality WAV audio files of musical notes with precise frequency generation, plus customizable duration on paid plans.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/musicnotegenerator?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
