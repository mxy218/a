.class public final Lcom/android/server/audio/AudioService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private mService:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"  # Landroid/content/Context;

    .line 652
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 653
    new-instance v0, Lcom/android/server/audio/AudioService;

    invoke-direct {v0, p1}, Lcom/android/server/audio/AudioService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$Lifecycle;->mService:Lcom/android/server/audio/AudioService;

    .line 654
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3
    .param p1, "phase"  # I

    .line 663
    const/16 v0, 0x226

    if-ne p1, v0, :cond_a

    .line 664
    iget-object v0, p0, Lcom/android/server/audio/AudioService$Lifecycle;->mService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->systemReady()V

    goto :goto_13

    .line 667
    :cond_a
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_13

    .line 668
    iget-object v0, p0, Lcom/android/server/audio/AudioService$Lifecycle;->mService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->bootCompleted()V

    .line 671
    :cond_13
    :goto_13
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 658
    iget-object v0, p0, Lcom/android/server/audio/AudioService$Lifecycle;->mService:Lcom/android/server/audio/AudioService;

    const-string v1, "audio"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/audio/AudioService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 659
    return-void
.end method
