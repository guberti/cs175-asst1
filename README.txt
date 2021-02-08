*** Remember to fill out huids.txt! ***

List of all files you submitted:

.gitignore
README.txt
asst1-sq-fl3.fshader
asst1-sq-fl3.vshader
asst1-tr-gl3.fshader
asst1-tr-gl3.vshader
asst1.cpp
huids.txt


Note the platform you used for development (Windows, OS X, ...):

Ubuntu 20.04 + Windows


Provide instructions on how to compile and run your code, especially if you used a nonstandard Makefile, or you are one of those hackers who insists on doing things differently.

I tested the project with Visual Studio 2019 on Windows 10, and it works as you would expect.


Indicate if you met all problem set requirements (more importantly, let us know where your bugs are and what you did to try to eliminate the bugs; we want to give you as much partial credit as we can).

I am not aware of any bugs. I've confirmed that in accordance with the requirements of task 2, the image and triangle does not change aspect ratio and is not cropped when the window is resized, and the behaviors for moving the square with the mouse and triangle with IJKL work as intended.

For the triangle, I've added the three color floats needed to make the vertices of the triangle differently colored, and applied that on top of the shield.ppm texture. 


Provide some overview of the code design. Don't go into details; just give us the big picture.

For task 2, the shader scales the y and x dimensions by the aspect ratio and its inverse, respectively. To maximize the efficiency of the program, whenever the window is re-sized the aspect ratio is re-calculated and passed to the shader. This lets us avoid re-calculating the aspect variable on every iteration through the loop (though to be honest, division is so fast this barely saves any time).

For task 3, we draw the triangle by creating new triangle vshader and vshader files, along with a TriangleShaderState object and loadTriangleGeometry, loadTriangleShader, and drawTriangle functions. The triangle is scaled the same way as the square is in task 2.


Let us know how to run the program; what are the hot keys, mouse button usage, and so on? Describe steps or sequences of steps the TF should take to test and evaluate your code (especially if your implmenentation strays from the assignment specification).

You should be able to run the program simply by opening it in Visual Studio 2019 and clicking run. To test all the features, make sure to:
- Resize the window to see the aspect ratios stay constant
- Move the mouse to see the square move and the images blend
- Confirm that the triangle has the shield.ppm texture and three different colored vertices
- Press IJKL to move the triangle
- Confirm the relative position between the triangle and square stays constant on resizing 


Finally, did you implement anything above and beyond the problem set? If so, document it in order for the TFs to test it and evaluate it.

Not this time.
