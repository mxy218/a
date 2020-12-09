.class Lcom/android/server/audio/AudioService$2;
.super Landroid/app/IUidObserver$Stub;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    .line 611
    iput-object p1, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method

.method private disableAudioForUid(ZI)V
    .registers 10

    .line 631
    iget-object v0, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v1

    .line 632
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 631
    const/16 v2, 0x64

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->access$500(Lcom/android/server/audio/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 634
    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 621
    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .registers 3

    .line 627
    invoke-direct {p0, p2, p1}, Lcom/android/server/audio/AudioService$2;->disableAudioForUid(ZI)V

    .line 628
    return-void
.end method

.method public onUidGone(IZ)V
    .registers 3

    .line 617
    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lcom/android/server/audio/AudioService$2;->disableAudioForUid(ZI)V

    .line 618
    return-void
.end method

.method public onUidIdle(IZ)V
    .registers 3

    .line 624
    return-void
.end method

.method public onUidStateChanged(IIJ)V
    .registers 5

    .line 613
    return-void
.end method
