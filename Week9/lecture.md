OOP1.9
====================

Overview
--------------------

This class acts as an introduction to the drawing parts of CoreAnimation, often referred to as QuartzCore.

[QuartzCore](https://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/QuartzCoreRefCollection/index.html)
--------------------

QuartzCore technically includes CoreImage and CoreAnimation, but commonly, references to it are talking purely about the **drawing components**.

QuartzCore is a powerful library you can use to draw almost any shape, this may sound quite humdrum, but these shapes are then usable throughout UIKit and CoreAnimation to do many useful things.

It may help you to read [this overview of CoreAnimation](https://developer.apple.com/library/ios/documentation/Cocoa/Conceptual/CoreAnimation_guide/Introduction/Introduction.html) if you have any questions.

`drawRect:`
--------------------

The most common entry point for custom drawing code you will write is the `UIView` method `drawRect:` This is called by the UI thread whenever it needs your layer to draw itself. This can happen once, it can happen multiple times (whenever our view changes size, for example), the resulting layer can be cached/rasterized, depending on the context in which it is drawn. You can also influence / force redraws when certain properties change, although this granularity is performed at the `CALayer` level, rather than `UIView`.

A normal `drawRect:` method looks like this:

```obj-c
- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    CGContextRef ctx = UIGraphicsGetCurrentContext();

    rect.size.width *= self.progress; // self.progress is a scalar value between 0 and 1

    CGContextAddRect(ctx, progressRect);

    CGContextSetFillColorWithColor(ctx, self.currentColor.CGColor);
    CGContextFillPath(ctx);
}
```

This draws a progress bar, eg: a bar the size of the rect passed in that is 'filled' to the % represented by `self.progress`.

The `rect` parameter passed in is the size of the `UIView`, or rather the size of the layer, as we won't know this until runtime, so we can then base our drawing around the size of the layer, allowing us to build resizable drawings/components.

If you override `drawRect:`, wether or not you call super is up to you, depending on if you want to eliminate the superclass' drawing behaviour, or add on to it. Where you call it also matters, as if you call it **after** your drawing code, the original draw code will be drawn **on top** of your code, and vice versa.

You can think of all QuartzCore drawing functions like using a pen. Whatever order you call everything in is the order in which the pen will push down, move around the page, etc. All you are ever doing is manipulating shapes, and the pen.

`CGContext`
--------------------

The `CGContext` above can be thought of as a single piece of paper. We can draw into this context, and then generate an image from it, and do with it whatever we want. You may also think of it as an individual texture. Normally, we want the `UIGraphicsGetCurrentContext()`, which returns whatever context is currently `active`, but we can also create new contexts if we wanted to draw off the main thread into a UIImage, or a PDF, etc.

Refs
--------------------
You may notice that the majority of the CoreGraphics/QuartzCore API uses `-Ref`s. This is true of most of the low level *Core* APIs, and you must understand that in these cases you have to manage lots of memory details yourself. For every `-Ref` type (eg: `CGContextRef`), there is an equivalent `-Release()` and `-Retain()` function that you need to call to handle your memory management. In the above example, we do not call either, because the context we are using **already exists**, so we have no need to retain or release it, (although we could if we wished), it is mostly important to release `-Ref`s created by methods that use the word `create`, as these are created and retained once automatically. However, make sure to always consult the documentation to see if you need to retain/release.

Commiting / Adding
--------------------
It is important to understand the difference between functions that `Add` something to your current path, and functions that actually perform drawing operations. You can think of this as `Add` methods constructing a stencil, and then methods with terms like `Fill` and `Stroke` actually apply that stencil.

CGPath/UIBezierPath
--------------------
CGPath, and its UIKit cousin UIBezierPath, are representations of paths. These can be used to mask layers, draw shapes, and do many more things. Interestingly, if you create an instance of UIBezierPath with a CGPath instance, you can press space to use Quick Look in the debugger to see what your shape looks like, while debugging.

State
--------------------
The CoreGraphics/QuartzCore API is basically a **state machine**, which means that in our pen analogy, we must set the color, line width, etc of our pen, and once we set it once, it stays like that until we change it.

API
--------------------
All of the CoreGraphics/QuartzCore drawing API functions begin with `CGContext`. Take a [look at the API](https://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CGContext/index.html) and see what is possible.
