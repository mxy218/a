.class Lflyme/support/v7/widget/ViewBoundsCheck;
.super Ljava/lang/Object;
.source "ViewBoundsCheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/widget/ViewBoundsCheck$Callback;,
        Lflyme/support/v7/widget/ViewBoundsCheck$BoundFlags;,
        Lflyme/support/v7/widget/ViewBoundsCheck$ViewBounds;
    }
.end annotation


# instance fields
.field mBoundFlags:Lflyme/support/v7/widget/ViewBoundsCheck$BoundFlags;

.field final mCallback:Lflyme/support/v7/widget/ViewBoundsCheck$Callback;


# direct methods
.method constructor <init>(Lflyme/support/v7/widget/ViewBoundsCheck$Callback;)V
    .registers 2

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lflyme/support/v7/widget/ViewBoundsCheck;->mCallback:Lflyme/support/v7/widget/ViewBoundsCheck$Callback;

    .line 132
    new-instance p1, Lflyme/support/v7/widget/ViewBoundsCheck$BoundFlags;

    invoke-direct {p1}, Lflyme/support/v7/widget/ViewBoundsCheck$BoundFlags;-><init>()V

    iput-object p1, p0, Lflyme/support/v7/widget/ViewBoundsCheck;->mBoundFlags:Lflyme/support/v7/widget/ViewBoundsCheck$BoundFlags;

    return-void
.end method


# virtual methods
.method findOneViewWithinBoundFlags(IIII)Landroid/view/View;
    .registers 13

    .line 214
    iget-object v0, p0, Lflyme/support/v7/widget/ViewBoundsCheck;->mCallback:Lflyme/support/v7/widget/ViewBoundsCheck$Callback;

    invoke-interface {v0}, Lflyme/support/v7/widget/ViewBoundsCheck$Callback;->getParentStart()I

    move-result v0

    .line 215
    iget-object v1, p0, Lflyme/support/v7/widget/ViewBoundsCheck;->mCallback:Lflyme/support/v7/widget/ViewBoundsCheck$Callback;

    invoke-interface {v1}, Lflyme/support/v7/widget/ViewBoundsCheck$Callback;->getParentEnd()I

    move-result v1

    if-le p2, p1, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, -0x1

    :goto_11
    const/4 v3, 0x0

    :goto_12
    if-eq p1, p2, :cond_57

    .line 219
    iget-object v4, p0, Lflyme/support/v7/widget/ViewBoundsCheck;->mCallback:Lflyme/support/v7/widget/ViewBoundsCheck$Callback;

    invoke-interface {v4, p1}, Lflyme/support/v7/widget/ViewBoundsCheck$Callback;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 220
    iget-object v5, p0, Lflyme/support/v7/widget/ViewBoundsCheck;->mCallback:Lflyme/support/v7/widget/ViewBoundsCheck$Callback;

    invoke-interface {v5, v4}, Lflyme/support/v7/widget/ViewBoundsCheck$Callback;->getChildStart(Landroid/view/View;)I

    move-result v5

    .line 221
    iget-object v6, p0, Lflyme/support/v7/widget/ViewBoundsCheck;->mCallback:Lflyme/support/v7/widget/ViewBoundsCheck$Callback;

    invoke-interface {v6, v4}, Lflyme/support/v7/widget/ViewBoundsCheck$Callback;->getChildEnd(Landroid/view/View;)I

    move-result v6

    .line 222
    iget-object v7, p0, Lflyme/support/v7/widget/ViewBoundsCheck;->mBoundFlags:Lflyme/support/v7/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v7, v0, v1, v5, v6}, Lflyme/support/v7/widget/ViewBoundsCheck$BoundFlags;->setBounds(IIII)V

    if-eqz p3, :cond_40

    .line 224
    iget-object v5, p0, Lflyme/support/v7/widget/ViewBoundsCheck;->mBoundFlags:Lflyme/support/v7/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v5}, Lflyme/support/v7/widget/ViewBoundsCheck$BoundFlags;->resetFlags()V

    .line 225
    iget-object v5, p0, Lflyme/support/v7/widget/ViewBoundsCheck;->mBoundFlags:Lflyme/support/v7/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v5, p3}, Lflyme/support/v7/widget/ViewBoundsCheck$BoundFlags;->addFlags(I)V

    .line 226
    iget-object v5, p0, Lflyme/support/v7/widget/ViewBoundsCheck;->mBoundFlags:Lflyme/support/v7/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v5}, Lflyme/support/v7/widget/ViewBoundsCheck$BoundFlags;->boundsMatch()Z

    move-result v5

    if-eqz v5, :cond_40

    return-object v4

    :cond_40
    if-eqz p4, :cond_55

    .line 232
    iget-object v5, p0, Lflyme/support/v7/widget/ViewBoundsCheck;->mBoundFlags:Lflyme/support/v7/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v5}, Lflyme/support/v7/widget/ViewBoundsCheck$BoundFlags;->resetFlags()V

    .line 233
    iget-object v5, p0, Lflyme/support/v7/widget/ViewBoundsCheck;->mBoundFlags:Lflyme/support/v7/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v5, p4}, Lflyme/support/v7/widget/ViewBoundsCheck$BoundFlags;->addFlags(I)V

    .line 234
    iget-object v5, p0, Lflyme/support/v7/widget/ViewBoundsCheck;->mBoundFlags:Lflyme/support/v7/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v5}, Lflyme/support/v7/widget/ViewBoundsCheck$BoundFlags;->boundsMatch()Z

    move-result v5

    if-eqz v5, :cond_55

    move-object v3, v4

    :cond_55
    add-int/2addr p1, v2

    goto :goto_12

    :cond_57
    return-object v3
.end method

.method isViewWithinBoundFlags(Landroid/view/View;I)Z
    .registers 8

    .line 249
    iget-object v0, p0, Lflyme/support/v7/widget/ViewBoundsCheck;->mBoundFlags:Lflyme/support/v7/widget/ViewBoundsCheck$BoundFlags;

    iget-object v1, p0, Lflyme/support/v7/widget/ViewBoundsCheck;->mCallback:Lflyme/support/v7/widget/ViewBoundsCheck$Callback;

    invoke-interface {v1}, Lflyme/support/v7/widget/ViewBoundsCheck$Callback;->getParentStart()I

    move-result v1

    iget-object v2, p0, Lflyme/support/v7/widget/ViewBoundsCheck;->mCallback:Lflyme/support/v7/widget/ViewBoundsCheck$Callback;

    invoke-interface {v2}, Lflyme/support/v7/widget/ViewBoundsCheck$Callback;->getParentEnd()I

    move-result v2

    iget-object v3, p0, Lflyme/support/v7/widget/ViewBoundsCheck;->mCallback:Lflyme/support/v7/widget/ViewBoundsCheck$Callback;

    .line 250
    invoke-interface {v3, p1}, Lflyme/support/v7/widget/ViewBoundsCheck$Callback;->getChildStart(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lflyme/support/v7/widget/ViewBoundsCheck;->mCallback:Lflyme/support/v7/widget/ViewBoundsCheck$Callback;

    invoke-interface {v4, p1}, Lflyme/support/v7/widget/ViewBoundsCheck$Callback;->getChildEnd(Landroid/view/View;)I

    move-result p1

    .line 249
    invoke-virtual {v0, v1, v2, v3, p1}, Lflyme/support/v7/widget/ViewBoundsCheck$BoundFlags;->setBounds(IIII)V

    if-eqz p2, :cond_30

    .line 252
    iget-object p1, p0, Lflyme/support/v7/widget/ViewBoundsCheck;->mBoundFlags:Lflyme/support/v7/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {p1}, Lflyme/support/v7/widget/ViewBoundsCheck$BoundFlags;->resetFlags()V

    .line 253
    iget-object p1, p0, Lflyme/support/v7/widget/ViewBoundsCheck;->mBoundFlags:Lflyme/support/v7/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {p1, p2}, Lflyme/support/v7/widget/ViewBoundsCheck$BoundFlags;->addFlags(I)V

    .line 254
    iget-object p0, p0, Lflyme/support/v7/widget/ViewBoundsCheck;->mBoundFlags:Lflyme/support/v7/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {p0}, Lflyme/support/v7/widget/ViewBoundsCheck$BoundFlags;->boundsMatch()Z

    move-result p0

    return p0

    :cond_30
    const/4 p0, 0x0

    return p0
.end method
