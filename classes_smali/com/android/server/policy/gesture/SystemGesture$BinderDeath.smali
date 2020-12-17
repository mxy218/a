.class final Lcom/android/server/policy/gesture/SystemGesture$BinderDeath;
.super Ljava/lang/Object;
.source "SystemGesture.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/gesture/SystemGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderDeath"
.end annotation


# instance fields
.field private mClient:Lcom/android/server/policy/gesture/SystemGestureClient;

.field private mGesture:I

.field private mPkg:Ljava/lang/String;

.field private mUid:I

.field final synthetic this$0:Lcom/android/server/policy/gesture/SystemGesture;


# direct methods
.method constructor <init>(Lcom/android/server/policy/gesture/SystemGesture;Ljava/lang/String;IILcom/android/server/policy/gesture/SystemGestureClient;)V
    .registers 6
    .param p2, "pkg"  # Ljava/lang/String;
    .param p3, "uid"  # I
    .param p4, "gesture"  # I
    .param p5, "client"  # Lcom/android/server/policy/gesture/SystemGestureClient;

    .line 291
    iput-object p1, p0, Lcom/android/server/policy/gesture/SystemGesture$BinderDeath;->this$0:Lcom/android/server/policy/gesture/SystemGesture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput-object p2, p0, Lcom/android/server/policy/gesture/SystemGesture$BinderDeath;->mPkg:Ljava/lang/String;

    .line 293
    iput p3, p0, Lcom/android/server/policy/gesture/SystemGesture$BinderDeath;->mUid:I

    .line 294
    iput p4, p0, Lcom/android/server/policy/gesture/SystemGesture$BinderDeath;->mGesture:I

    .line 295
    iput-object p5, p0, Lcom/android/server/policy/gesture/SystemGesture$BinderDeath;->mClient:Lcom/android/server/policy/gesture/SystemGestureClient;

    .line 296
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Death received from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/gesture/SystemGesture$BinderDeath;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", with gesture "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/gesture/SystemGesture$BinderDeath;->mGesture:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/gesture/SystemGesture$BinderDeath;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemGesture"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Lcom/android/server/policy/gesture/SystemGesture$BinderDeath;->this$0:Lcom/android/server/policy/gesture/SystemGesture;

    invoke-static {v0}, Lcom/android/server/policy/gesture/SystemGesture;->access$000(Lcom/android/server/policy/gesture/SystemGesture;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 302
    :try_start_33
    iget-object v1, p0, Lcom/android/server/policy/gesture/SystemGesture$BinderDeath;->this$0:Lcom/android/server/policy/gesture/SystemGesture;

    invoke-static {v1}, Lcom/android/server/policy/gesture/SystemGesture;->access$000(Lcom/android/server/policy/gesture/SystemGesture;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/gesture/SystemGesture$BinderDeath;->mClient:Lcom/android/server/policy/gesture/SystemGestureClient;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 303
    monitor-exit v0

    .line 304
    return-void

    .line 303
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_33 .. :try_end_42} :catchall_40

    throw v1
.end method
