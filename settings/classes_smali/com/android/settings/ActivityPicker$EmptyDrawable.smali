.class Lcom/android/settings/ActivityPicker$EmptyDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ActivityPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ActivityPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyDrawable"
.end annotation


# instance fields
.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    .line 441
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 442
    iput p1, p0, Lcom/android/settings/ActivityPicker$EmptyDrawable;->mWidth:I

    .line 443
    iput p2, p0, Lcom/android/settings/ActivityPicker$EmptyDrawable;->mHeight:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public getIntrinsicHeight()I
    .registers 1

    .line 453
    iget p0, p0, Lcom/android/settings/ActivityPicker$EmptyDrawable;->mHeight:I

    return p0
.end method

.method public getIntrinsicWidth()I
    .registers 1

    .line 448
    iget p0, p0, Lcom/android/settings/ActivityPicker$EmptyDrawable;->mWidth:I

    return p0
.end method

.method public getMinimumHeight()I
    .registers 1

    .line 463
    iget p0, p0, Lcom/android/settings/ActivityPicker$EmptyDrawable;->mHeight:I

    return p0
.end method

.method public getMinimumWidth()I
    .registers 1

    .line 458
    iget p0, p0, Lcom/android/settings/ActivityPicker$EmptyDrawable;->mWidth:I

    return p0
.end method

.method public getOpacity()I
    .registers 1

    const/4 p0, -0x3

    return p0
.end method

.method public setAlpha(I)V
    .registers 2

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method
