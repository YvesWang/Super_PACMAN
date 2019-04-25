from distutils.core import setup
from Cython.Build import cythonize

setup(ext_modules = cythonize('SpathGhost.pyx'))
setup(ext_modules = cythonize('game.pyx'))
setup(ext_modules = cythonize('ghostAgents.pyx'))
setup(ext_modules = cythonize('graphicsDisplay.pyx'))
setup(ext_modules = cythonize('graphicsUtils.pyx'))
setup(ext_modules = cythonize('keyboardAgents.pyx'))
setup(ext_modules = cythonize('layout.pyx'))
setup(ext_modules = cythonize('multiAgents.pyx'))
setup(ext_modules = cythonize('pacman.pyx'))
setup(ext_modules = cythonize('pacmanAgents.pyx'))
setup(ext_modules = cythonize('textDisplay.pyx'))
setup(ext_modules = cythonize('util.pyx'))
