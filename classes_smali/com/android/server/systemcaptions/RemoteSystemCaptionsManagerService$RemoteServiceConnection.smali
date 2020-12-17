.class Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;
.super Ljava/lang/Object;
.source "RemoteSystemCaptionsManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)V
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;
    .param p2, "x1"  # Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$1;

    .line 137
    invoke-direct {p0, p1}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;-><init>(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"  # Landroid/content/ComponentName;
    .param p2, "service"  # Landroid/os/IBinder;

    .line 140
    iget-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    invoke-static {v0}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->access$100(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 141
    :try_start_7
    iget-object v1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    invoke-static {v1}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->access$200(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 142
    invoke-static {}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onServiceConnected()"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_19
    iget-object v1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    invoke-static {v1}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->access$400(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)Z

    move-result v1

    if-nez v1, :cond_37

    iget-object v1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    invoke-static {v1}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->access$500(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)Z

    move-result v1

    if-nez v1, :cond_2a

    goto :goto_37

    .line 148
    :cond_2a
    iget-object v1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->access$502(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;Z)Z

    .line 149
    iget-object v1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    invoke-static {v1, p2}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->access$602(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 150
    monitor-exit v0

    .line 151
    return-void

    .line 145
    :cond_37
    :goto_37
    invoke-static {}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onServiceConnected() dispatched after unbindService"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    monitor-exit v0

    return-void

    .line 150
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_7 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"  # Landroid/content/ComponentName;

    .line 155
    iget-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    invoke-static {v0}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->access$100(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 156
    :try_start_7
    iget-object v1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    invoke-static {v1}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->access$200(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 157
    invoke-static {}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onServiceDisconnected()"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_19
    iget-object v1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->access$502(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;Z)Z

    .line 160
    iget-object v1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->access$602(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 161
    monitor-exit v0

    .line 162
    return-void

    .line 161
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_27

    throw v1
.end method
