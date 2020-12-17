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
    .param p1, "this$1"  # Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 1896
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

    .line 1901
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$asSystemService:Z

    if-eqz v0, :cond_15

    .line 1902
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1903
    .local v0, "callingOpPackageName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .local v1, "callingUid":I
    goto :goto_19

    .line 1905
    .end local v0  # "callingOpPackageName":Ljava/lang/String;
    .end local v1  # "callingUid":I
    :cond_15
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$opPackageName:Ljava/lang/String;

    .line 1906
    .restart local v0  # "callingOpPackageName":Ljava/lang/String;
    iget v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$uid:I

    .line 1909
    .restart local v1  # "callingUid":I
    :goto_19
    :try_start_19
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v2, v2, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$4300(Lcom/android/server/media/MediaSessionService;)Landroid/media/AudioManagerInternal;

    move-result-object v2

    iget v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$suggestedStream:I

    iget v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$direction:I

    iget v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$flags:I

    move-object v6, v0

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Landroid/media/AudioManagerInternal;->adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;I)V
    :try_end_2c
    .catch Ljava/lang/SecurityException; {:try_start_19 .. :try_end_2c} :catch_2d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_2c} :catch_2d

    .line 1916
    goto :goto_78

    .line 1911
    :catch_2d
    move-exception v2

    .line 1912
    .local v2, "e":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot adjust volume: direction="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$direction:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", suggestedStream="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$suggestedStream:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", flags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$flags:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", asSystemService="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$asSystemService:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaSessionService"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1917
    .end local v2  # "e":Ljava/lang/RuntimeException;
    :goto_78
    return-void
.end method
