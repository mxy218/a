.class final Lcom/android/systemui/statusbar/policy/KeyButtonRipple$LogInterpolator;
.super Ljava/lang/Object;
.source "KeyButtonRipple.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/KeyButtonRipple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LogInterpolator"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/KeyButtonRipple$1;)V
    .registers 2

    .line 455
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$LogInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 4

    neg-float p0, p1

    float-to-double p0, p0

    const-wide v0, 0x3ff6666666666666L  # 1.4

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4079000000000000L  # 400.0

    .line 458
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-float p0, p0

    const/high16 p1, 0x3f800000  # 1.0f

    sub-float/2addr p1, p0

    return p1
.end method
