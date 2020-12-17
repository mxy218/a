.class public interface abstract Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;
.super Ljava/lang/Object;
.source "WakefulnessLifecycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/WakefulnessLifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Observer"
.end annotation


# virtual methods
.method public onFinishedGoingToSleep()V
    .registers 1

    return-void
.end method

.method public onFinishedWakingUp()V
    .registers 1

    return-void
.end method

.method public onStartedGoingToSleep()V
    .registers 1

    return-void
.end method

.method public onStartedWakingUp()V
    .registers 1

    return-void
.end method
