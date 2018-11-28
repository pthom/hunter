.. spelling::

    magnum

.. index::
  single: graphics ; magnum

.. _pkg.magnum:

magnum
===

-  `Official <https://github.com/mosra/magnum>`__
-  `Main Site <https://magnum.graphics/>`__
-  `Hunterized <https://github.com/hunter-packages/magnum>`__
-  `Example <https://github.com/ruslo/hunter/blob/master/examples/magnum/CMakeLists.txt>`__
-  Developed by `Vladimír Vondruš<https://github.com/mosra>`
-  Added by `Pascal Thomet <https://github.com/pthom>`__ (`pr-N <https://github.com/ruslo/hunter/pull/N>`__)

usage
-----

.. code-block:: cmake

    hunter_add_package(magnum)
    hunter_add_package(SDL2)
    find_package(Magnum CONFIG REQUIRED
        GL
        MeshTools
        Primitives
        Shaders
        Sdl2Application)
    target_link_libraries(... PRIVATE
        Magnum::Application
        Magnum::GL
        Magnum::Magnum
        Magnum::MeshTools
        Magnum::Primitives
        Magnum::Shaders)

About
-----

magnum is a lightweight and modular C++11/C++14 graphics middleware for games and data visualization

Known issues
------------

If you are using one of the magnum components GlfwApplication or Sdl2Application, you will need
need to add hunter_add_package(SDL2) or hunter_add_package(glfw) together with hunter_add_package(magnum).
