.class final Lcom/android/server/display/DisplayPowerState$BinderDeath;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderDeath"
.end annotation


# instance fields
.field private listener:Lcom/android/server/display/DisplayPowerState$BrightnessListener;

.field private tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/display/DisplayPowerState;

.field private uid:I


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerState;Ljava/lang/String;ILcom/android/server/display/DisplayPowerState$BrightnessListener;)V
    .registers 5
    .param p2, "tag"  # Ljava/lang/String;
    .param p3, "uid"  # I
    .param p4, "listener"  # Lcom/android/server/display/DisplayPowerState$BrightnessListener;

    .line 523
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState$BinderDeath;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    iput-object p2, p0, Lcom/android/server/display/DisplayPowerState$BinderDeath;->tag:Ljava/lang/String;

    .line 525
    iput p3, p0, Lcom/android/server/display/DisplayPowerState$BinderDeath;->uid:I

    .line 526
    iput-object p4, p0, Lcom/android/server/display/DisplayPowerState$BinderDeath;->listener:Lcom/android/server/display/DisplayPowerState$BrightnessListener;

    .line 527
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .line 531
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$BinderDeath;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->access$1500(Lcom/android/server/display/DisplayPowerState;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 532
    :try_start_7
    invoke-static {}, Lcom/android/server/display/DisplayPowerState;->access$500()Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v1, "DisplayPowerState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Death received from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerState$BinderDeath;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/DisplayPowerState$BinderDeath;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_2f
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$BinderDeath;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerState;->access$1600(Lcom/android/server/display/DisplayPowerState;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerState$BinderDeath;->listener:Lcom/android/server/display/DisplayPowerState$BrightnessListener;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 534
    monitor-exit v0

    .line 535
    return-void

    .line 534
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_7 .. :try_end_3e} :catchall_3c

    throw v1
.end method
