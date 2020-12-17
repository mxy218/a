.class public Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
.super Lflyme/support/v7/widget/RecyclerView$LayoutParams;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field mFullSpan:Z

.field mSpan:Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 2420
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 2416
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2

    .line 2428
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 2

    .line 2424
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-void
.end method


# virtual methods
.method public final getSpanIndex()I
    .registers 1

    .line 2464
    iget-object p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 2467
    :cond_6
    iget p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    return p0
.end method

.method public isFullSpan()Z
    .registers 1

    .line 2454
    iget-boolean p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    return p0
.end method

.method public setFullSpan(Z)V
    .registers 2

    .line 2444
    iput-boolean p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    return-void
.end method
