.class Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "EnhanceGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/EnhanceGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListViewDragShadowBuilder"
.end annotation


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundPadding:Landroid/graphics/Rect;

.field private mHeight:I

.field private mHightLightNormal:Landroid/graphics/drawable/Drawable;

.field private mHightLightWarning:Landroid/graphics/drawable/Drawable;

.field private mNeedBackground:Z

.field private mShowPoint:Landroid/graphics/Point;

.field private mState:I

.field private mWidth:I

.field final synthetic this$0:Lcom/meizu/common/widget/EnhanceGallery;


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/EnhanceGallery;Landroid/view/View;)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2543
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;-><init>(Lcom/meizu/common/widget/EnhanceGallery;Landroid/view/View;ZLandroid/graphics/Point;)V

    return-void
.end method

.method public constructor <init>(Lcom/meizu/common/widget/EnhanceGallery;Landroid/view/View;ZLandroid/graphics/Point;)V
    .registers 9

    .line 2546
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    .line 2547
    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 2537
    iput-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mNeedBackground:Z

    const/4 v1, 0x0

    .line 2538
    iput-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mShowPoint:Landroid/graphics/Point;

    const/4 v1, -0x1

    .line 2635
    iput v1, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mState:I

    .line 2548
    iput-boolean p3, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mNeedBackground:Z

    .line 2549
    iput-object p4, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mShowPoint:Landroid/graphics/Point;

    if-nez p2, :cond_15

    return-void

    :cond_15
    const/4 p4, 0x0

    if-eqz p3, :cond_86

    .line 2552
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-static {p1}, Lcom/meizu/common/widget/EnhanceGallery;->access$1300(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 2553
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 2554
    iget-object p3, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {p3, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2555
    iget-object p3, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 2556
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 2557
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 2558
    iget v3, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    iget v3, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mWidth:I

    .line 2559
    iget v1, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, p3

    iput v2, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mHeight:I

    .line 2560
    iget-object p3, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mWidth:I

    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {p3, p4, p4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2562
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-static {p1}, Lcom/meizu/common/widget/EnhanceGallery;->access$1400(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mHightLightNormal:Landroid/graphics/drawable/Drawable;

    .line 2563
    iget-object p3, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mHightLightNormal:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mWidth:I

    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {p3, p4, p4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2565
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-static {p1}, Lcom/meizu/common/widget/EnhanceGallery;->access$1500(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mHightLightWarning:Landroid/graphics/drawable/Drawable;

    .line 2566
    iget-object p3, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mHightLightWarning:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mWidth:I

    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {p3, p4, p4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_92

    .line 2569
    :cond_86
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    iput p3, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mWidth:I

    .line 2570
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p3

    iput p3, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mHeight:I

    .line 2573
    :goto_92
    invoke-static {p1, p4}, Lcom/meizu/common/widget/EnhanceGallery;->access$1602(Lcom/meizu/common/widget/EnhanceGallery;I)I

    .line 2574
    iget p3, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p4

    if-le p3, p4, :cond_ce

    const/4 p3, 0x2

    new-array p4, p3, [I

    .line 2578
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    new-array p3, p3, [I

    .line 2581
    invoke-virtual {p2, p3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2583
    aget p2, p3, v0

    aget v1, p4, v0

    if-ge p2, v1, :cond_c8

    .line 2584
    aget p2, p4, v0

    aget p3, p3, v0

    sub-int/2addr p2, p3

    invoke-static {p1, p2}, Lcom/meizu/common/widget/EnhanceGallery;->access$1602(Lcom/meizu/common/widget/EnhanceGallery;I)I

    .line 2585
    iget p2, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p3

    sub-int/2addr p2, p3

    .line 2586
    invoke-static {p1}, Lcom/meizu/common/widget/EnhanceGallery;->access$1600(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Lcom/meizu/common/widget/EnhanceGallery;->access$1602(Lcom/meizu/common/widget/EnhanceGallery;I)I

    .line 2589
    :cond_c8
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mHeight:I

    :cond_ce
    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .registers 5

    .line 2608
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mNeedBackground:Z

    if-eqz v0, :cond_38

    .line 2609
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mState:I

    if-nez v0, :cond_e

    .line 2610
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mHightLightNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1c

    :cond_e
    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 2612
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mHightLightWarning:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1c

    .line 2614
    :cond_17
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2616
    :goto_1c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2617
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v2}, Lcom/meizu/common/widget/EnhanceGallery;->access$1600(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2618
    invoke-super {p0, p1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V

    .line 2619
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_59

    .line 2621
    :cond_38
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v0}, Lcom/meizu/common/widget/EnhanceGallery;->access$1600(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v0

    if-eqz v0, :cond_56

    .line 2622
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x0

    .line 2623
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v1}, Lcom/meizu/common/widget/EnhanceGallery;->access$1600(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2624
    invoke-super {p0, p1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V

    .line 2625
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_59

    .line 2627
    :cond_56
    invoke-super {p0, p1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V

    :goto_59
    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 5

    .line 2596
    invoke-super {p0, p1, p2}, Landroid/view/View$DragShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 2597
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mWidth:I

    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 2599
    iget-boolean p1, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mNeedBackground:Z

    if-eqz p1, :cond_2f

    .line 2600
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {p1}, Lcom/meizu/common/widget/EnhanceGallery;->access$1700(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result p1

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v0}, Lcom/meizu/common/widget/EnhanceGallery;->access$1800(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {p0}, Lcom/meizu/common/widget/EnhanceGallery;->access$1600(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result p0

    sub-int/2addr v0, p0

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Point;->set(II)V

    goto :goto_45

    .line 2602
    :cond_2f
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {p1}, Lcom/meizu/common/widget/EnhanceGallery;->access$1700(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result p1

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v0}, Lcom/meizu/common/widget/EnhanceGallery;->access$1800(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v0

    iget-object p0, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {p0}, Lcom/meizu/common/widget/EnhanceGallery;->access$1600(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result p0

    sub-int/2addr v0, p0

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Point;->set(II)V

    :goto_45
    return-void
.end method
