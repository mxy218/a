.class final Lcom/android/server/pm/UserManagerService$MainHandler;
.super Landroid/os/Handler;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UserManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .registers 2

    .line 4093
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$MainHandler;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 4097
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_28

    .line 4099
    :cond_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/UserManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 4100
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$MainHandler;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$1200(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4101
    :try_start_12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object p1, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 4102
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$MainHandler;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/UserManagerService;->access$1300(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p1

    .line 4103
    if-eqz p1, :cond_27

    .line 4104
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$MainHandler;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/UserManagerService;->access$1400(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 4106
    :cond_27
    monitor-exit v0

    .line 4108
    :goto_28
    return-void

    .line 4106
    :catchall_29
    move-exception p1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_29

    throw p1
.end method
