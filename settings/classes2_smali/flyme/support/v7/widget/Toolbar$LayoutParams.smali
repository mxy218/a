.class public Lflyme/support/v7/widget/Toolbar$LayoutParams;
.super Lflyme/support/v7/app/ActionBar$LayoutParams;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field mViewType:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 2062
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/app/ActionBar$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 2055
    iput p1, p0, Lflyme/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    const p1, 0x800013

    .line 2063
    iput p1, p0, Lflyme/support/v7/app/ActionBar$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2058
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2055
    iput p1, p0, Lflyme/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2

    .line 2093
    invoke-direct {p0, p1}, Lflyme/support/v7/app/ActionBar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 2055
    iput p1, p0, Lflyme/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 3

    .line 2086
    invoke-direct {p0, p1}, Lflyme/support/v7/app/ActionBar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .line 2055
    iput v0, p0, Lflyme/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2089
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/Toolbar$LayoutParams;->copyMarginsFromCompat(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-void
.end method

.method public constructor <init>(Lflyme/support/v7/app/ActionBar$LayoutParams;)V
    .registers 2

    .line 2082
    invoke-direct {p0, p1}, Lflyme/support/v7/app/ActionBar$LayoutParams;-><init>(Lflyme/support/v7/app/ActionBar$LayoutParams;)V

    const/4 p1, 0x0

    .line 2055
    iput p1, p0, Lflyme/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    return-void
.end method

.method public constructor <init>(Lflyme/support/v7/widget/Toolbar$LayoutParams;)V
    .registers 3

    .line 2076
    invoke-direct {p0, p1}, Lflyme/support/v7/app/ActionBar$LayoutParams;-><init>(Lflyme/support/v7/app/ActionBar$LayoutParams;)V

    const/4 v0, 0x0

    .line 2055
    iput v0, p0, Lflyme/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2078
    iget p1, p1, Lflyme/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    iput p1, p0, Lflyme/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    return-void
.end method


# virtual methods
.method copyMarginsFromCompat(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 3

    .line 2097
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2098
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2099
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 2100
    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return-void
.end method
