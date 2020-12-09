.class Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;
.super Ljava/lang/Object;
.source "MediaSessionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchAdjustVolumeLocked(Ljava/lang/String;Ljava/lang/String;IIZIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

.field final synthetic val$asSystemService:Z

.field final synthetic val$direction:I

.field final synthetic val$flags:I

.field final synthetic val$opPackageName:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$suggestedStream:I

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;ZLjava/lang/String;IIIILjava/lang/String;)V
    .registers 9

    .line 1883
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iput-boolean p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$asSystemService:Z

    iput-object p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$opPackageName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$uid:I

    iput p5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$suggestedStream:I

    iput p6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$direction:I

    iput p7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$flags:I

    iput-object p8, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 1888
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$asSystemService:Z

    if-eqz v0, :cond_17

    .line 1889
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1890
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    move-object v6, v0

    move v7, v1

    goto :goto_1d

    .line 1892
    :cond_17
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$opPackageName:Ljava/lang/String;

    .line 1893
    iget v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$uid:I

    move-object v6, v0

    move v7, v1

    .line 1896
    :goto_1d
    :try_start_1d
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$4300(Lcom/android/server/media/MediaSessionService;)Landroid/media/AudioManagerInternal;

    move-result-object v2

    iget v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$suggestedStream:I

    iget v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$direction:I

    iget v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$flags:I

    invoke-virtual/range {v2 .. v7}, Landroid/media/AudioManagerInternal;->adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;I)V
    :try_end_2e
    .catch Ljava/lang/SecurityException; {:try_start_1d .. :try_end_2e} :catch_2f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_2e} :catch_2f

    .line 1903
    goto :goto_7a

    .line 1898
    :catch_2f
    move-exception v0

    .line 1899
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot adjust volume: direction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$direction:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", suggestedStream="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$suggestedStream:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$flags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", asSystemService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$asSystemService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaSessionService"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1904
    :goto_7a
    return-void
.end method
