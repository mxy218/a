.class Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;
.super Landroid/os/Handler;
.source "DefaultPermissionGrantPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/pm/permission/PermissionManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Landroid/os/Looper;)V
    .registers 3

    .line 223
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 226
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_24

    .line 227
    iget-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->access$000(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 228
    :try_start_c
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->access$100(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/util/ArrayMap;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 229
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->access$200(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->access$102(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    .line 231
    :cond_1f
    monitor-exit p1

    goto :goto_24

    :catchall_21
    move-exception v0

    monitor-exit p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_21

    throw v0

    .line 233
    :cond_24
    :goto_24
    return-void
.end method
