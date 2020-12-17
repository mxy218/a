.class public Lflyme/support/v7/drawable/EmptyDivider;
.super Landroid/graphics/drawable/Drawable;
.source "EmptyDivider.java"


# instance fields
.field private mDividerHeight:I

.field private mDividerWidth:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1  # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public getIntrinsicHeight()I
    .registers 1

    .line 33
    iget p0, p0, Lflyme/support/v7/drawable/EmptyDivider;->mDividerHeight:I

    return p0
.end method

.method public getIntrinsicWidth()I
    .registers 1

    .line 38
    iget p0, p0, Lflyme/support/v7/drawable/EmptyDivider;->mDividerWidth:I

    return p0
.end method

.method public getOpacity()I
    .registers 1

    const/4 p0, -0x2

    return p0
.end method

.method public setAlpha(I)V
    .registers 2

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2
    .param p1  # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public setDividerWidth(I)V
    .registers 2

    .line 42
    iput p1, p0, Lflyme/support/v7/drawable/EmptyDivider;->mDividerWidth:I

    return-void
.end method
