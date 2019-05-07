from distutils.core import setup
from Cython.Build import cythonize
import numpy

#setup(ext_modules = cythonize('SpathGhost.pyx', annotate=True), include_dirs=[numpy.get_include()])
setup(ext_modules = cythonize('game.pyx', annotate=True), include_dirs=[numpy.get_include()])
#setup(ext_modules = cythonize('ghostAgents.pyx', annotate=True), include_dirs=[numpy.get_include()])
#setup(ext_modules = cythonize('graphicsDisplay.pyx', annotate=True), include_dirs=[numpy.get_include()])
#setup(ext_modules = cythonize('graphicsUtils.pyx', annotate=True), include_dirs=[numpy.get_include()])
#setup(ext_modules = cythonize('keyboardAgents.pyx', annotate=True), include_dirs=[numpy.get_include()])
#setup(ext_modules = cythonize('layout.pyx', annotate=True), include_dirs=[numpy.get_include()])
#setup(ext_modules = cythonize('multiAgents.pyx', annotate=True), include_dirs=[numpy.get_include()])
#setup(ext_modules = cythonize('pacman.pyx', annotate=True), include_dirs=[numpy.get_include()])
#setup(ext_modules = cythonize('pacmanAgents.pyx', annotate=True), include_dirs=[numpy.get_include()])
#setup(ext_modules = cythonize('textDisplay.pyx', annotate=True), include_dirs=[numpy.get_include()])
#setup(ext_modules = cythonize('util.pyx', annotate=True), include_dirs=[numpy.get_include()])
