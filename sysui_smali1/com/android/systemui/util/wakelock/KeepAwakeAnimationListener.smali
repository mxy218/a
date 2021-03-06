.class public Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeepAwakeAnimationListener.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# static fields
.field static sWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 34
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 35
    sget-object p0, Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;->sWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    if-nez p0, :cond_12

    const-string p0, "animation"

    .line 36
    invoke-static {p1, p0}, Lcom/android/systemui/util/wakelock/WakeLock;->createPartial(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object p0

    sput-object p0, Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;->sWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    :cond_12
    return-void
.end method

.method private onEnd()V
    .registers 2

    .line 71
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 72
    sget-object p0, Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;->sWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    const-string v0, "KeepAwakeAnimListener"

    invoke-interface {p0, v0}, Lcom/android/systemui/util/wakelock/WakeLock;->release(Ljava/lang/String;)V

    return-void
.end method

.method private onStart()V
    .registers 2

    .line 66
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 67
    sget-object p0, Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;->sWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    const-string v0, "KeepAwakeAnimListener"

    invoke-interface {p0, v0}, Lcom/android/systemui/util/wakelock/WakeLock;->acquire(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 62
    invoke-direct {p0}, Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;->onEnd()V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    .line 47
    invoke-direct {p0}, Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;->onEnd()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;->onStart()V

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    .line 42
    invoke-direct {p0}, Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;->onStart()V

    return-void
.end method
