# CALayer
1.CALayer

  CALayer是个与UIView很类似的概念，同样有backgroundColor、frame等相似的属性，我们可以将UIView看做一种特殊的CALayer。
**但实际上UIView是对CALayer封装，在CALayer的基础上再添加交互功能**。UIView的显示必须依赖于CALayer。我们同样可以跟新建view一样新建一个layer，
然后添加到某个已有的layer上，同样可以对layer调整大小、位置、透明度等。一般来说，layer可以有两种用途：一是对view相关属性的设置，包括圆角、阴影、
边框等参数；二是实现对view的动画操控。 因此对一个view进行动画，本质上是对该view的.layer进行动画操纵。

~~~
//1.创建CALayer
CALayer *layer = [CALayer layer];
layer.frame = CGRectMake(([UIScreen mainScreen].bounds.size.width - 100)/2, 30, 100, 100);
layer.backgroundColor = [UIColor redColor].CGColor;

//2.设置layer边框,圆角
layer.borderColor = [UIColor blackColor].CGColor;
layer.borderWidth = 2;
layer.cornerRadius = 4;

//3.设置layer阴影
layer.shadowColor = [UIColor blackColor].CGColor;
layer.shadowOffset = CGSizeMake(5, 10);
layer.shadowOpacity = 0.6;

[self.view.layer addSublayer:layer];
~~~


![图片](https://github.com/Jhinnn/JXLayer/blob/master/layer.png)
