from distutils.core import setup

if __name__ == "__main__":
    setup(
        author="Tsz Kiu Pang",
        author_email="osamupang@gmail.com",
        install_requires=["abjad", "abjad-ext-nauert"],
        name="utsu",
        packages=["utsu"],
        version="0.1",
        zip_safe=False,
    )
