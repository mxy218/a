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

    .line 137
    invoke-direct {p0, p1}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;-><init>(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .line 140
    iget-object p1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    invoke-static {p1}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->access$100(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 141
    :try_start_7
    iget-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    invoke-static {v0}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->access$200(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 142
    invoke-static {}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceConnected()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_19
    iget-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    invoke-static {v0}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->access$400(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    invoke-static {v0}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->access$500(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_37

    .line 148
    :cond_2a
    iget-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->access$502(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;Z)Z

    .line 149
    iget-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    invoke-static {v0, p2}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->access$602(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 150
    monitor-exit p1

    .line 151
    return-void

    .line 145
    :cond_37
    :goto_37
    invoke-static {}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->access$300()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "onServiceConnected() dispatched after unbindService"

    invoke-static {p2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    monitor-exit p1

    return-void

    .line 150
    :catchall_43
    move-exception p2

    monitor-exit p1
    :try_end_45
    .catchall {:try_start_7 .. :try_end_45} :catchall_43

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .line 155
    iget-object p1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    invoke-static {p1}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->access$100(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 156
    :try_start_7
    iget-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    invoke-static {v0}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->access$200(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 157
    invoke-static {}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_19
    iget-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->access$502(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;Z)Z

    .line 160
    iget-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->access$602(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 161
    monitor-exit p1

    .line 162
    return-void

    .line 161
    :catchall_27
    move-exception v0

    monitor-exit p1
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_27

    throw v0
.end method
