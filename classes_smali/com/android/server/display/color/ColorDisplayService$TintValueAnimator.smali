.class Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;
.super Landroid/animation/ValueAnimator;
.source "ColorDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/color/ColorDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TintValueAnimator"
.end annotation


# instance fields
.field private max:[F

.field private min:[F


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1121
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    return-void
.end method

.method public static varargs ofMatrix(Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;[Ljava/lang/Object;)Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;
    .registers 5

    .line 1127
    new-instance v0, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;

    invoke-direct {v0}, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;-><init>()V

    .line 1128
    invoke-virtual {v0, p1}, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 1129
    invoke-virtual {v0, p0}, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 1130
    if-eqz p1, :cond_34

    array-length p0, p1

    if-nez p0, :cond_11

    goto :goto_34

    .line 1133
    :cond_11
    const/4 p0, 0x0

    aget-object p1, p1, p0

    check-cast p1, [F

    .line 1134
    array-length v1, p1

    new-array v1, v1, [F

    iput-object v1, v0, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->min:[F

    .line 1135
    array-length v1, p1

    new-array v1, v1, [F

    iput-object v1, v0, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->max:[F

    .line 1136
    nop

    :goto_21
    array-length v1, p1

    if-ge p0, v1, :cond_33

    .line 1137
    iget-object v1, v0, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->min:[F

    const v2, 0x7f7fffff  # Float.MAX_VALUE

    aput v2, v1, p0

    .line 1138
    iget-object v1, v0, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->max:[F

    const/4 v2, 0x1

    aput v2, v1, p0

    .line 1136
    add-int/lit8 p0, p0, 0x1

    goto :goto_21

    .line 1140
    :cond_33
    return-object v0

    .line 1131
    :cond_34
    :goto_34
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getMax()[F
    .registers 2

    .line 1159
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->max:[F

    return-object v0
.end method

.method public getMin()[F
    .registers 2

    .line 1155
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->min:[F

    return-object v0
.end method

.method public updateMinMaxComponents()V
    .registers 6

    .line 1144
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 1145
    if-nez v0, :cond_9

    .line 1146
    return-void

    .line 1148
    :cond_9
    const/4 v1, 0x0

    :goto_a
    array-length v2, v0

    if-ge v1, v2, :cond_28

    .line 1149
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->min:[F

    aget v3, v2, v1

    aget v4, v0, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v2, v1

    .line 1150
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->max:[F

    aget v3, v2, v1

    aget v4, v0, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, v2, v1

    .line 1148
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1152
    :cond_28
    return-void
.end method
