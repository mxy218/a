.class public abstract Lflyme/support/v7/widget/OrientationHelper;
.super Ljava/lang/Object;
.source "OrientationHelper.java"


# instance fields
.field private mLastTotalSpace:I

.field protected final mLayoutManager:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

.field final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>(Lflyme/support/v7/widget/RecyclerView$LayoutManager;)V
    .registers 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 43
    iput v0, p0, Lflyme/support/v7/widget/OrientationHelper;->mLastTotalSpace:I

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/OrientationHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 48
    iput-object p1, p0, Lflyme/support/v7/widget/OrientationHelper;->mLayoutManager:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    return-void
.end method

.method synthetic constructor <init>(Lflyme/support/v7/widget/RecyclerView$LayoutManager;Lflyme/support/v7/widget/OrientationHelper$1;)V
    .registers 3

    .line 33
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/OrientationHelper;-><init>(Lflyme/support/v7/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public static createHorizontalHelper(Lflyme/support/v7/widget/RecyclerView$LayoutManager;)Lflyme/support/v7/widget/OrientationHelper;
    .registers 2

    .line 251
    new-instance v0, Lflyme/support/v7/widget/OrientationHelper$1;

    invoke-direct {v0, p0}, Lflyme/support/v7/widget/OrientationHelper$1;-><init>(Lflyme/support/v7/widget/RecyclerView$LayoutManager;)V

    return-object v0
.end method

.method public static createOrientationHelper(Lflyme/support/v7/widget/RecyclerView$LayoutManager;I)Lflyme/support/v7/widget/OrientationHelper;
    .registers 3

    if-eqz p1, :cond_12

    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    .line 238
    invoke-static {p0}, Lflyme/support/v7/widget/OrientationHelper;->createVerticalHelper(Lflyme/support/v7/widget/RecyclerView$LayoutManager;)Lflyme/support/v7/widget/OrientationHelper;

    move-result-object p0

    return-object p0

    .line 240
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 236
    :cond_12
    invoke-static {p0}, Lflyme/support/v7/widget/OrientationHelper;->createHorizontalHelper(Lflyme/support/v7/widget/RecyclerView$LayoutManager;)Lflyme/support/v7/widget/OrientationHelper;

    move-result-object p0

    return-object p0
.end method

.method public static createVerticalHelper(Lflyme/support/v7/widget/RecyclerView$LayoutManager;)Lflyme/support/v7/widget/OrientationHelper;
    .registers 2

    .line 349
    new-instance v0, Lflyme/support/v7/widget/OrientationHelper$2;

    invoke-direct {v0, p0}, Lflyme/support/v7/widget/OrientationHelper$2;-><init>(Lflyme/support/v7/widget/RecyclerView$LayoutManager;)V

    return-object v0
.end method


# virtual methods
.method public abstract getDecoratedEnd(Landroid/view/View;)I
.end method

.method public abstract getDecoratedMeasurement(Landroid/view/View;)I
.end method

.method public abstract getDecoratedMeasurementInOther(Landroid/view/View;)I
.end method

.method public abstract getDecoratedStart(Landroid/view/View;)I
.end method

.method public abstract getEnd()I
.end method

.method public abstract getEndAfterPadding()I
.end method

.method public abstract getEndPadding()I
.end method

.method public abstract getMode()I
.end method

.method public abstract getModeInOther()I
.end method

.method public abstract getStartAfterPadding()I
.end method

.method public abstract getTotalSpace()I
.end method

.method public getTotalSpaceChange()I
    .registers 3

    .line 71
    iget v0, p0, Lflyme/support/v7/widget/OrientationHelper;->mLastTotalSpace:I

    const/high16 v1, -0x80000000

    if-ne v1, v0, :cond_8

    const/4 p0, 0x0

    goto :goto_10

    :cond_8
    invoke-virtual {p0}, Lflyme/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    iget p0, p0, Lflyme/support/v7/widget/OrientationHelper;->mLastTotalSpace:I

    sub-int p0, v0, p0

    :goto_10
    return p0
.end method

.method public abstract getTransformedEndWithDecoration(Landroid/view/View;)I
.end method

.method public abstract getTransformedStartWithDecoration(Landroid/view/View;)I
.end method

.method public abstract offsetChildren(I)V
.end method

.method public onLayoutComplete()V
    .registers 2

    .line 57
    invoke-virtual {p0}, Lflyme/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    iput v0, p0, Lflyme/support/v7/widget/OrientationHelper;->mLastTotalSpace:I

    return-void
.end method