.class final Landroidx/leanback/widget/RowContainerView;
.super Landroid/widget/LinearLayout;
.source "RowContainerView.java"


# instance fields
.field private mForeground:Landroid/graphics/drawable/Drawable;

.field private mForegroundBoundsChanged:Z

.field private mHeaderDock:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/RowContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 36
    iput-boolean p2, p0, Landroidx/leanback/widget/RowContainerView;->mForegroundBoundsChanged:Z

    .line 48
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 50
    sget p2, Landroidx/leanback/R$layout;->lb_row_container:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 52
    sget p1, Landroidx/leanback/R$id;->lb_row_container_header_dock:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Landroidx/leanback/widget/RowContainerView;->mHeaderDock:Landroid/view/ViewGroup;

    .line 53
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 105
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 106
    iget-object v0, p0, Landroidx/leanback/widget/RowContainerView;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1e

    .line 107
    iget-boolean v1, p0, Landroidx/leanback/widget/RowContainerView;->mForegroundBoundsChanged:Z

    if-eqz v1, :cond_19

    const/4 v1, 0x0

    .line 108
    iput-boolean v1, p0, Landroidx/leanback/widget/RowContainerView;->mForegroundBoundsChanged:Z

    .line 109
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 111
    :cond_19
    iget-object p0, p0, Landroidx/leanback/widget/RowContainerView;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1e
    return-void
.end method

.method public getForeground()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 94
    iget-object p0, p0, Landroidx/leanback/widget/RowContainerView;->mForeground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public hasOverlappingRendering()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    const/4 p1, 0x1

    .line 100
    iput-boolean p1, p0, Landroidx/leanback/widget/RowContainerView;->mForegroundBoundsChanged:Z

    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 78
    iput-object p1, p0, Landroidx/leanback/widget/RowContainerView;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 79
    iget-object p1, p0, Landroidx/leanback/widget/RowContainerView;->mForeground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 80
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method
