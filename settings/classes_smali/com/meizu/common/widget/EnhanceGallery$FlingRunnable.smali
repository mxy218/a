.class Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;
.super Ljava/lang/Object;
.source "EnhanceGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/EnhanceGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mLastDelta:I

.field private mLastFlingX:I

.field private mLastOverFlingX:I

.field private mScroller:Lcom/meizu/common/widget/OverScroller;

.field final synthetic this$0:Lcom/meizu/common/widget/EnhanceGallery;


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/EnhanceGallery;)V
    .registers 3

    .line 1864
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1861
    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->mLastOverFlingX:I

    .line 1865
    new-instance v0, Lcom/meizu/common/widget/OverScroller;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/meizu/common/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->mScroller:Lcom/meizu/common/widget/OverScroller;

    .line 1866
    iget-object p0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->mScroller:Lcom/meizu/common/widget/OverScroller;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lcom/meizu/common/widget/OverScroller;->setEnableMZOverScroll(ZZ)V

    return-void
.end method

.method private endFling(Z)V
    .registers 4

    .line 1914
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->mScroller:Lcom/meizu/common/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/OverScroller;->forceFinished(Z)V

    if-eqz p1, :cond_e

    .line 1917
    iget-object p0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {p0}, Lcom/meizu/common/widget/EnhanceGallery;->access$1000(Lcom/meizu/common/widget/EnhanceGallery;)V

    goto :goto_14

    .line 1919
    :cond_e
    iget-object p0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/EnhanceGallery;->reportScrollStateChange(I)V

    :goto_14
    return-void
.end method

.method private startCommon()V
    .registers 2

    .line 1872
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 1925
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iget v1, v0, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    const/4 v2, 0x1

    if-nez v1, :cond_b

    .line 1926
    invoke-direct {p0, v2}, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->endFling(Z)V

    return-void

    .line 1929
    :cond_b
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->mScroller:Lcom/meizu/common/widget/OverScroller;

    .line 1931
    invoke-static {v0}, Lcom/meizu/common/widget/EnhanceGallery;->access$200(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v0

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eq v0, v2, :cond_5e

    if-eq v0, v6, :cond_5e

    const/4 v2, -0x1

    if-eq v0, v4, :cond_32

    if-eq v0, v3, :cond_32

    .line 1986
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v0, v2}, Lcom/meizu/common/widget/EnhanceGallery;->access$202(Lcom/meizu/common/widget/EnhanceGallery;I)I

    .line 1987
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v0}, Lcom/meizu/common/widget/EnhanceGallery;->access$300(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v0

    if-eqz v0, :cond_c0

    .line 1988
    iget-object p0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/EnhanceGallery;->reportScrollStateChange(I)V

    goto/16 :goto_c0

    .line 1971
    :cond_32
    invoke-virtual {v1}, Lcom/meizu/common/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1972
    invoke-virtual {v1}, Lcom/meizu/common/widget/OverScroller;->getCurrX()I

    move-result v0

    .line 1973
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->mLastOverFlingX:I

    sub-int v1, v0, v1

    .line 1974
    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->mLastOverFlingX:I

    if-eqz v1, :cond_4a

    .line 1977
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/EnhanceGallery;->trackMotionScroll(I)Z

    .line 1978
    :cond_4a
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 1979
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_c0

    .line 1981
    :cond_55
    invoke-direct {p0, v5}, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->endFling(Z)V

    .line 1982
    iget-object p0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {p0, v2}, Lcom/meizu/common/widget/EnhanceGallery;->access$202(Lcom/meizu/common/widget/EnhanceGallery;I)I

    goto :goto_c0

    .line 1935
    :cond_5e
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v0, v5}, Lcom/meizu/common/widget/EnhanceGallery;->access$1102(Lcom/meizu/common/widget/EnhanceGallery;Z)Z

    .line 1937
    invoke-virtual {v1}, Lcom/meizu/common/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    .line 1938
    invoke-virtual {v1}, Lcom/meizu/common/widget/OverScroller;->getCurrX()I

    move-result v1

    .line 1942
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->mLastFlingX:I

    sub-int/2addr v7, v1

    .line 1944
    iget-object v8, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v8, v7}, Lcom/meizu/common/widget/EnhanceGallery;->trackMotionScroll(I)Z

    move-result v8

    if-eqz v0, :cond_8a

    .line 1946
    iget-object v9, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v9}, Lcom/meizu/common/widget/EnhanceGallery;->access$1100(Lcom/meizu/common/widget/EnhanceGallery;)Z

    move-result v9

    if-nez v9, :cond_8a

    if-nez v8, :cond_8a

    .line 1947
    iput v1, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->mLastFlingX:I

    .line 1948
    iput v7, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->mLastDelta:I

    .line 1949
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_c0

    :cond_8a
    if-eqz v0, :cond_bd

    .line 1950
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v0}, Lcom/meizu/common/widget/EnhanceGallery;->access$1100(Lcom/meizu/common/widget/EnhanceGallery;)Z

    move-result v0

    if-nez v0, :cond_bd

    if-eqz v8, :cond_bd

    .line 1952
    invoke-direct {p0, v5}, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->endFling(Z)V

    .line 1953
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v0}, Lcom/meizu/common/widget/EnhanceGallery;->access$200(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v0

    if-ne v0, v6, :cond_a7

    .line 1954
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v0, v3}, Lcom/meizu/common/widget/EnhanceGallery;->access$202(Lcom/meizu/common/widget/EnhanceGallery;I)I

    goto :goto_ac

    .line 1956
    :cond_a7
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v0, v4}, Lcom/meizu/common/widget/EnhanceGallery;->access$202(Lcom/meizu/common/widget/EnhanceGallery;I)I

    .line 1959
    :goto_ac
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v0}, Lcom/meizu/common/widget/EnhanceGallery;->access$300(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v0

    if-eq v0, v6, :cond_b9

    .line 1960
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v0, v6}, Lcom/meizu/common/widget/EnhanceGallery;->reportScrollStateChange(I)V

    .line 1963
    :cond_b9
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->startSpringback()V

    goto :goto_c0

    .line 1965
    :cond_bd
    invoke-direct {p0, v2}, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->endFling(Z)V

    :cond_c0
    :goto_c0
    return-void
.end method

.method public startSpringback()V
    .registers 8

    .line 1894
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->mScroller:Lcom/meizu/common/widget/OverScroller;

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v1}, Lcom/meizu/common/widget/EnhanceGallery;->access$900(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/meizu/common/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1895
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/meizu/common/widget/EnhanceGallery;->access$202(Lcom/meizu/common/widget/EnhanceGallery;I)I

    .line 1896
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v0}, Lcom/meizu/common/widget/EnhanceGallery;->access$900(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->mLastOverFlingX:I

    .line 1897
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 1898
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_32

    .line 1900
    :cond_2c
    iget-object p0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->access$202(Lcom/meizu/common/widget/EnhanceGallery;I)I

    :goto_32
    return-void
.end method

.method public startUsingDistance(I)V
    .registers 10

    if-nez p1, :cond_3

    return-void

    .line 1878
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/meizu/common/widget/EnhanceGallery;->access$202(Lcom/meizu/common/widget/EnhanceGallery;I)I

    .line 1880
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->startCommon()V

    const/4 v0, 0x0

    .line 1882
    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->mLastFlingX:I

    .line 1883
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->mScroller:Lcom/meizu/common/widget/OverScroller;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1884
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->mScroller:Lcom/meizu/common/widget/OverScroller;

    const/4 v3, 0x0

    const/4 v4, 0x0

    neg-int v5, p1

    const/4 v6, 0x0

    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {p1}, Lcom/meizu/common/widget/EnhanceGallery;->access$800(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Lcom/meizu/common/widget/OverScroller;->startScroll(IIIII)V

    .line 1885
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stop(Z)V
    .registers 3

    .line 1905
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1906
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->endFling(Z)V

    return-void
.end method
