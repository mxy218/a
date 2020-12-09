.class Lcom/android/server/camera/CameraServiceProxy$1;
.super Landroid/content/BroadcastReceiver;
.source "CameraServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/camera/CameraServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/camera/CameraServiceProxy;


# direct methods
.method constructor <init>(Lcom/android/server/camera/CameraServiceProxy;)V
    .registers 2

    .line 168
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$1;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 171
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 172
    if-nez p1, :cond_7

    return-void

    .line 174
    :cond_7
    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_72

    :cond_13
    goto :goto_45

    :sswitch_14
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 p2, 0x0

    goto :goto_45

    :sswitch_1e
    const-string v0, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    move p2, v1

    goto :goto_45

    :sswitch_28
    const-string v0, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    move p2, v3

    goto :goto_45

    :sswitch_32
    const-string v0, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    move p2, v2

    goto :goto_45

    :sswitch_3c
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    move p2, v4

    :goto_45
    if-eqz p2, :cond_50

    if-eq p2, v4, :cond_50

    if-eq p2, v3, :cond_50

    if-eq p2, v2, :cond_50

    if-eq p2, v1, :cond_50

    goto :goto_6e

    .line 180
    :cond_50
    iget-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$1;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-static {p1}, Lcom/android/server/camera/CameraServiceProxy;->access$000(Lcom/android/server/camera/CameraServiceProxy;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 182
    :try_start_57
    iget-object p2, p0, Lcom/android/server/camera/CameraServiceProxy$1;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-static {p2}, Lcom/android/server/camera/CameraServiceProxy;->access$100(Lcom/android/server/camera/CameraServiceProxy;)Ljava/util/Set;

    move-result-object p2

    if-nez p2, :cond_61

    monitor-exit p1

    return-void

    .line 183
    :cond_61
    iget-object p2, p0, Lcom/android/server/camera/CameraServiceProxy$1;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy$1;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-static {v0}, Lcom/android/server/camera/CameraServiceProxy;->access$200(Lcom/android/server/camera/CameraServiceProxy;)I

    move-result v0

    invoke-static {p2, v0}, Lcom/android/server/camera/CameraServiceProxy;->access$300(Lcom/android/server/camera/CameraServiceProxy;I)V

    .line 184
    monitor-exit p1

    .line 185
    nop

    .line 190
    :goto_6e
    return-void

    .line 184
    :catchall_6f
    move-exception p2

    monitor-exit p1
    :try_end_71
    .catchall {:try_start_57 .. :try_end_71} :catchall_6f

    throw p2

    :sswitch_data_72
    .sparse-switch
        -0x7ad942ef -> :sswitch_3c
        -0x16fbb1bb -> :sswitch_32
        -0xc02da2e -> :sswitch_28
        0x3eac4465 -> :sswitch_1e
        0x42dd01f1 -> :sswitch_14
    .end sparse-switch
.end method
