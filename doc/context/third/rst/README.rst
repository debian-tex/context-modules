==============
General Advice
==============

Read the section *Features Not Implemented* in the manual first.

*Note*: if you happen to read this on BitBucket, the error messages some lines
below just mean that *their* implementation doesn’t understand TeX directives.
Don’t worry, |rstcontext| does.

============
Installation
============

In order to install |rstcontext|, copy everything under the ``mod/``
subdirectory into your local |CONTEXT| tree and update the filename database,
i.e.: ::

    cp -r mod/* ~/context/tex/texmf-local/
    context --generate

if the |CONTEXT| minimal distribution happens to be installed at
``~/context/``.

=====
Usage
=====

As rstConTeXt was developed on *texlua*, you may expect it to run best with this
interpreter. For now the script accepts two command line arguments: the input
file and the output file. The following will demonstrate the main usage in a
separate directory: ::

    mkdir tmp; cd tmp
    mtxrun --script rst --if=../mod/doc/context/third/rst/documentation.rst --of=doc.tex
    context ../mod/doc/context/third/rst/manual.tex

This should have gotten you the manual converted to a file ``doc.tex`` which was
subsequently run through |CONTEXT| to generate the final ``manual.pdf``. You
will find extended instructions on how to build the manual with some cosmetic
improvements in the section *Usage* of the manual itself.

There is also a small module ``t-rst.mkiv`` which permits direct typesetting of
reST markup with |CONTEXT| MkIV. For usage examples see the files
``hybridtest.tex`` and ``moduletest.tex`` in the ``doc`` subdirectory.

=======
License
=======

|rstcontext| is free software and may be redistributed under the terms of the
2-clause BSD license. You should have recieved a copy of this license in a file
named “COPYING” in the source tree. If there is no such file then please contact
the maintainer_ (Contact_).

=======
Contact
=======

|rstcontext| was written by Philipp Gesang, ``megas.kapaneus`` at ``gmail`` dot
``com`` (find me on BitBucket_).

.. |rstcontext| ctx:: {{\em rst}\kern.5pt\CONTEXT}
.. |CONTEXT| ctx:: {\CONTEXT}

.. _Contact: megas.kapaneus@gmail.com
.. _BitBucket:  http://bitbucket.org/phg
.. _maintainer: Contact_
