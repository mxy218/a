.class public Lflyme/support/v7/widget/AnimationUtils;
.super Ljava/lang/Object;
.source "AnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/widget/AnimationUtils$AlphaVisibilityAnimator;
    }
.end annotation


# static fields
.field public static final ANIMATION_INTERPOLATOR_TRANSLATION_IN:Landroid/view/animation/Interpolator;

.field public static final ANIMATION_INTERPOLATOR_TRANSLATION_OUT:Landroid/view/animation/Interpolator;

.field public static final DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 31
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lflyme/support/v7/widget/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 32
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lflyme/support/v7/widget/AnimationUtils;->DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v1, 0x0

    const v2, 0x3ea8f5c3  # 0.33f

    const v3, 0x3dcccccd  # 0.1f

    .line 35
    invoke-static {v1, v2, v3, v0}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v2

    sput-object v2, Lflyme/support/v7/widget/AnimationUtils;->ANIMATION_INTERPOLATOR_TRANSLATION_IN:Landroid/view/animation/Interpolator;

    const v2, 0x3f28f5c3  # 0.66f

    .line 36
    invoke-static {v1, v2, v2, v0}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lflyme/support/v7/widget/AnimationUtils;->ANIMATION_INTERPOLATOR_TRANSLATION_OUT:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public static lerp(IIF)I
    .registers 3

    sub-int/2addr p1, p0

    int-to-float p1, p1

    mul-float/2addr p2, p1

    .line 50
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method
