.class public Lcom/android/server/wm/animation/RadiusAnimation;
.super Landroid/view/animation/Animation;
.source "RadiusAnimation.java"


# instance fields
.field private final mFromRadius:F

.field private final mToRadius:F


# direct methods
.method public constructor <init>(FF)V
    .registers 3
    .param p1, "fromRadius"  # F
    .param p2, "toRadius"  # F

    .line 10
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 11
    iput p1, p0, Lcom/android/server/wm/animation/RadiusAnimation;->mFromRadius:F

    .line 12
    iput p2, p0, Lcom/android/server/wm/animation/RadiusAnimation;->mToRadius:F

    .line 13
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 5
    .param p1, "interpolatedTime"  # F
    .param p2, "t"  # Landroid/view/animation/Transformation;

    .line 17
    iget v0, p0, Lcom/android/server/wm/animation/RadiusAnimation;->mFromRadius:F

    iget v1, p0, Lcom/android/server/wm/animation/RadiusAnimation;->mToRadius:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 18
    .local v0, "radius":F
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setCornerRadius(F)V

    .line 19
    return-void
.end method
