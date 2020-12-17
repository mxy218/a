.class Lcom/meizu/settings/deviceinfo/FlymeStatus$MyHandler;
.super Landroid/os/Handler;
.source "FlymeStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/deviceinfo/FlymeStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private mStatus:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/meizu/settings/deviceinfo/FlymeStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/meizu/settings/deviceinfo/FlymeStatus;)V
    .registers 3

    .line 108
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 109
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus$MyHandler;->mStatus:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 114
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus$MyHandler;->mStatus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/deviceinfo/FlymeStatus;

    if-nez v0, :cond_b

    return-void

    .line 119
    :cond_b
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1f4

    if-eq p1, v1, :cond_1a

    const/16 p0, 0x258

    if-eq p1, p0, :cond_16

    goto :goto_22

    .line 126
    :cond_16
    invoke-virtual {v0}, Lcom/meizu/settings/deviceinfo/FlymeStatus;->updateConnectivity()V

    goto :goto_22

    .line 121
    :cond_1a
    invoke-virtual {v0}, Lcom/meizu/settings/deviceinfo/FlymeStatus;->updateTimes()V

    const-wide/16 v2, 0x3e8

    .line 122
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_22
    return-void
.end method
