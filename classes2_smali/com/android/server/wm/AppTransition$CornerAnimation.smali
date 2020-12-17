.class Lcom/android/server/wm/AppTransition$CornerAnimation;
.super Landroid/view/animation/Animation;
.source "AppTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CornerAnimation"
.end annotation


# instance fields
.field private mClipRect:Landroid/graphics/Rect;

.field private mFromRadius:F

.field private mToRadius:F


# direct methods
.method constructor <init>(FFII)V
    .registers 7
    .param p1, "fromRadius"  # F
    .param p2, "toRadius"  # F
    .param p3, "logicalWidth"  # I
    .param p4, "logicalHeight"  # I

    .line 2509
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 2510
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppTransition$CornerAnimation;->setHasRoundedCorners(Z)V

    .line 2511
    iput p1, p0, Lcom/android/server/wm/AppTransition$CornerAnimation;->mFromRadius:F

    .line 2512
    iput p2, p0, Lcom/android/server/wm/AppTransition$CornerAnimation;->mToRadius:F

    .line 2513
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition$CornerAnimation;->mClipRect:Landroid/graphics/Rect;

    .line 2514
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 7
    .param p1, "interpolatedTime"  # F
    .param p2, "t"  # Landroid/view/animation/Transformation;

    .line 2519
    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_9

    .line 2520
    const/4 v0, 0x0

    .local v0, "radius":F
    goto :goto_10

    .line 2522
    .end local v0  # "radius":F
    :cond_9
    iget v0, p0, Lcom/android/server/wm/AppTransition$CornerAnimation;->mFromRadius:F

    iget v1, p0, Lcom/android/server/wm/AppTransition$CornerAnimation;->mToRadius:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 2524
    .restart local v0  # "radius":F
    :goto_10
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setCornerRadius(F)V

    .line 2525
    iget-object v1, p0, Lcom/android/server/wm/AppTransition$CornerAnimation;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/view/animation/Transformation;->setClipRect(Landroid/graphics/Rect;)V

    .line 2526
    return-void
.end method
