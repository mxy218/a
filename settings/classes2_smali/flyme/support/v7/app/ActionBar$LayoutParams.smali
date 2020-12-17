.class public Lflyme/support/v7/app/ActionBar$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/app/ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public gravity:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 1476
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 1465
    iput p1, p0, Lflyme/support/v7/app/ActionBar$LayoutParams;->gravity:I

    const p1, 0x800013

    .line 1477
    iput p1, p0, Lflyme/support/v7/app/ActionBar$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1468
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 1465
    iput v0, p0, Lflyme/support/v7/app/ActionBar$LayoutParams;->gravity:I

    .line 1470
    sget-object v1, Lflyme/support/v7/appcompat/R$styleable;->ActionBarLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1471
    sget p2, Lflyme/support/v7/appcompat/R$styleable;->ActionBarLayout_android_layout_gravity:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lflyme/support/v7/app/ActionBar$LayoutParams;->gravity:I

    .line 1472
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2

    .line 1496
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 1465
    iput p1, p0, Lflyme/support/v7/app/ActionBar$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>(Lflyme/support/v7/app/ActionBar$LayoutParams;)V
    .registers 3

    .line 1490
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 v0, 0x0

    .line 1465
    iput v0, p0, Lflyme/support/v7/app/ActionBar$LayoutParams;->gravity:I

    .line 1492
    iget p1, p1, Lflyme/support/v7/app/ActionBar$LayoutParams;->gravity:I

    iput p1, p0, Lflyme/support/v7/app/ActionBar$LayoutParams;->gravity:I

    return-void
.end method
