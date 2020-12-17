.class public Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;
.super Ljava/lang/Object;
.source "AnimationProperties.java"


# instance fields
.field public delay:J

.field public duration:J

.field private mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

.field private mInterpolatorMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/util/Property;",
            "Landroid/view/animation/Interpolator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public combineCustomInterpolators(Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .registers 3

    .line 71
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    if-eqz p1, :cond_14

    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    if-nez v0, :cond_f

    .line 74
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    .line 76
    :cond_f
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    :cond_14
    return-void
.end method

.method public getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;
    .registers 2

    .line 38
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    return-object v0
.end method

.method public getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    return-object p0
.end method

.method public getCustomInterpolator(Landroid/view/View;Landroid/util/Property;)Landroid/view/animation/Interpolator;
    .registers 3

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    if-eqz p0, :cond_b

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/animation/Interpolator;

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public resetCustomInterpolators()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;
    .registers 2

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public setAnimationFinishListener(Landroid/animation/AnimatorListenerAdapter;)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    return-object p0
.end method

.method public setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;
    .registers 4

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    if-nez v0, :cond_b

    .line 85
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    .line 87
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setDelay(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;
    .registers 3

    .line 97
    iput-wide p1, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    return-object p0
.end method

.method public setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;
    .registers 3

    .line 92
    iput-wide p1, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    return-object p0
.end method

.method public wasAdded(Landroid/view/View;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method
