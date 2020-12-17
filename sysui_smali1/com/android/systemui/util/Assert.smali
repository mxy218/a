.class public Lcom/android/systemui/util/Assert;
.super Ljava/lang/Object;
.source "Assert.java"


# static fields
.field public static sMainLooper:Landroid/os/Looper;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/util/Assert;->sMainLooper:Landroid/os/Looper;

    return-void
.end method

.method public static isMainThread()V
    .registers 2

    .line 32
    sget-object v0, Lcom/android/systemui/util/Assert;->sMainLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 33
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "should be called from the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
