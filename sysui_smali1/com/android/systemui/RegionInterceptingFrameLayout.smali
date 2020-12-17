.class public Lcom/android/systemui/RegionInterceptingFrameLayout;
.super Landroid/widget/FrameLayout;
.source "RegionInterceptingFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/RegionInterceptingFrameLayout$RegionInterceptableView;
    }
.end annotation


# instance fields
.field private final mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance p1, Lcom/android/systemui/-$$Lambda$RegionInterceptingFrameLayout$JlFdsR9I_9ubvsna7k1PTnmr7OI;

    invoke-direct {p1, p0}, Lcom/android/systemui/-$$Lambda$RegionInterceptingFrameLayout$JlFdsR9I_9ubvsna7k1PTnmr7OI;-><init>(Lcom/android/systemui/RegionInterceptingFrameLayout;)V

    iput-object p1, p0, Lcom/android/systemui/RegionInterceptingFrameLayout;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    new-instance p1, Lcom/android/systemui/-$$Lambda$RegionInterceptingFrameLayout$JlFdsR9I_9ubvsna7k1PTnmr7OI;

    invoke-direct {p1, p0}, Lcom/android/systemui/-$$Lambda$RegionInterceptingFrameLayout$JlFdsR9I_9ubvsna7k1PTnmr7OI;-><init>(Lcom/android/systemui/RegionInterceptingFrameLayout;)V

    iput-object p1, p0, Lcom/android/systemui/RegionInterceptingFrameLayout;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    new-instance p1, Lcom/android/systemui/-$$Lambda$RegionInterceptingFrameLayout$JlFdsR9I_9ubvsna7k1PTnmr7OI;

    invoke-direct {p1, p0}, Lcom/android/systemui/-$$Lambda$RegionInterceptingFrameLayout$JlFdsR9I_9ubvsna7k1PTnmr7OI;-><init>(Lcom/android/systemui/RegionInterceptingFrameLayout;)V

    iput-object p1, p0, Lcom/android/systemui/RegionInterceptingFrameLayout;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 61
    new-instance p1, Lcom/android/systemui/-$$Lambda$RegionInterceptingFrameLayout$JlFdsR9I_9ubvsna7k1PTnmr7OI;

    invoke-direct {p1, p0}, Lcom/android/systemui/-$$Lambda$RegionInterceptingFrameLayout$JlFdsR9I_9ubvsna7k1PTnmr7OI;-><init>(Lcom/android/systemui/RegionInterceptingFrameLayout;)V

    iput-object p1, p0, Lcom/android/systemui/RegionInterceptingFrameLayout;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$RegionInterceptingFrameLayout(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .registers 6

    const/4 v0, 0x3

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 63
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    const/4 v0, 0x0

    .line 64
    :goto_a
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 65
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 66
    instance-of v2, v1, Lcom/android/systemui/RegionInterceptingFrameLayout$RegionInterceptableView;

    if-nez v2, :cond_19

    goto :goto_30

    .line 69
    :cond_19
    check-cast v1, Lcom/android/systemui/RegionInterceptingFrameLayout$RegionInterceptableView;

    .line 70
    invoke-interface {v1}, Lcom/android/systemui/RegionInterceptingFrameLayout$RegionInterceptableView;->shouldInterceptTouch()Z

    move-result v2

    if-nez v2, :cond_22

    goto :goto_30

    .line 73
    :cond_22
    invoke-interface {v1}, Lcom/android/systemui/RegionInterceptingFrameLayout$RegionInterceptableView;->getInterceptRegion()Landroid/graphics/Region;

    move-result-object v1

    if-nez v1, :cond_29

    goto :goto_30

    .line 78
    :cond_29
    iget-object v2, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    :goto_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_33
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 51
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 52
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/RegionInterceptingFrameLayout;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 57
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 58
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/RegionInterceptingFrameLayout;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method
