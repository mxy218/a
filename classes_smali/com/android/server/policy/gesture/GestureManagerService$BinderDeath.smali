.class final Lcom/android/server/policy/gesture/GestureManagerService$BinderDeath;
.super Ljava/lang/Object;
.source "GestureManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/gesture/GestureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderDeath"
.end annotation


# instance fields
.field private mListener:Lcom/android/server/policy/gesture/GestureManagerService$GestureListener;

.field private mTag:Ljava/lang/String;

.field private mUid:I

.field final synthetic this$0:Lcom/android/server/policy/gesture/GestureManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/policy/gesture/GestureManagerService;Ljava/lang/String;ILcom/android/server/policy/gesture/GestureManagerService$GestureListener;)V
    .registers 5
    .param p2, "tag"  # Ljava/lang/String;
    .param p3, "uid"  # I
    .param p4, "listener"  # Lcom/android/server/policy/gesture/GestureManagerService$GestureListener;

    .line 147
    iput-object p1, p0, Lcom/android/server/policy/gesture/GestureManagerService$BinderDeath;->this$0:Lcom/android/server/policy/gesture/GestureManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p2, p0, Lcom/android/server/policy/gesture/GestureManagerService$BinderDeath;->mTag:Ljava/lang/String;

    .line 149
    iput p3, p0, Lcom/android/server/policy/gesture/GestureManagerService$BinderDeath;->mUid:I

    .line 150
    iput-object p4, p0, Lcom/android/server/policy/gesture/GestureManagerService$BinderDeath;->mListener:Lcom/android/server/policy/gesture/GestureManagerService$GestureListener;

    .line 151
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 155
    monitor-enter p0

    .line 156
    :try_start_1
    const-string v0, "GestureManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Death received from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/policy/gesture/GestureManagerService$BinderDeath;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/policy/gesture/GestureManagerService$BinderDeath;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService$BinderDeath;->this$0:Lcom/android/server/policy/gesture/GestureManagerService;

    invoke-static {v0}, Lcom/android/server/policy/gesture/GestureManagerService;->access$400(Lcom/android/server/policy/gesture/GestureManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/gesture/GestureManagerService$BinderDeath;->mListener:Lcom/android/server/policy/gesture/GestureManagerService$GestureListener;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 158
    monitor-exit p0

    .line 159
    return-void

    .line 158
    :catchall_30
    move-exception v0

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_30

    throw v0
.end method
