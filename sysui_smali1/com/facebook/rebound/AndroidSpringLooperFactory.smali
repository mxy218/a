.class abstract Lcom/facebook/rebound/AndroidSpringLooperFactory;
.super Ljava/lang/Object;
.source "AndroidSpringLooperFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;,
        Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;
    }
.end annotation


# direct methods
.method public static createSpringLooper()Lcom/facebook/rebound/SpringLooper;
    .registers 2

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_b

    .line 32
    invoke-static {}, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->create()Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    move-result-object v0

    return-object v0

    .line 34
    :cond_b
    invoke-static {}, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->create()Lcom/facebook/rebound/SpringLooper;

    move-result-object v0

    return-object v0
.end method
