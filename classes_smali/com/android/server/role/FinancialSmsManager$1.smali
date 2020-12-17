.class Lcom/android/server/role/FinancialSmsManager$1;
.super Ljava/lang/Object;
.source "FinancialSmsManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/role/FinancialSmsManager;->connectAndRun(Lcom/android/server/role/FinancialSmsManager$Command;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/role/FinancialSmsManager;


# direct methods
.method constructor <init>(Lcom/android/server/role/FinancialSmsManager;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/role/FinancialSmsManager;

    .line 136
    iput-object p1, p0, Lcom/android/server/role/FinancialSmsManager$1;->this$0:Lcom/android/server/role/FinancialSmsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"  # Landroid/content/ComponentName;

    .line 166
    iget-object v0, p0, Lcom/android/server/role/FinancialSmsManager$1;->this$0:Lcom/android/server/role/FinancialSmsManager;

    invoke-static {v0}, Lcom/android/server/role/FinancialSmsManager;->access$000(Lcom/android/server/role/FinancialSmsManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 167
    :try_start_7
    iget-object v1, p0, Lcom/android/server/role/FinancialSmsManager$1;->this$0:Lcom/android/server/role/FinancialSmsManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/role/FinancialSmsManager;->access$102(Lcom/android/server/role/FinancialSmsManager;Landroid/service/sms/IFinancialSmsService;)Landroid/service/sms/IFinancialSmsService;

    .line 168
    monitor-exit v0

    .line 169
    return-void

    .line 168
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"  # Landroid/content/ComponentName;

    .line 173
    iget-object v0, p0, Lcom/android/server/role/FinancialSmsManager$1;->this$0:Lcom/android/server/role/FinancialSmsManager;

    invoke-static {v0}, Lcom/android/server/role/FinancialSmsManager;->access$000(Lcom/android/server/role/FinancialSmsManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 174
    :try_start_7
    iget-object v1, p0, Lcom/android/server/role/FinancialSmsManager$1;->this$0:Lcom/android/server/role/FinancialSmsManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/role/FinancialSmsManager;->access$102(Lcom/android/server/role/FinancialSmsManager;Landroid/service/sms/IFinancialSmsService;)Landroid/service/sms/IFinancialSmsService;

    .line 175
    monitor-exit v0

    .line 176
    return-void

    .line 175
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 11
    .param p1, "name"  # Landroid/content/ComponentName;
    .param p2, "service"  # Landroid/os/IBinder;

    .line 139
    iget-object v0, p0, Lcom/android/server/role/FinancialSmsManager$1;->this$0:Lcom/android/server/role/FinancialSmsManager;

    invoke-static {v0}, Lcom/android/server/role/FinancialSmsManager;->access$000(Lcom/android/server/role/FinancialSmsManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 140
    :try_start_7
    iget-object v1, p0, Lcom/android/server/role/FinancialSmsManager$1;->this$0:Lcom/android/server/role/FinancialSmsManager;

    invoke-static {p2}, Landroid/service/sms/IFinancialSmsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/sms/IFinancialSmsService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/role/FinancialSmsManager;->access$102(Lcom/android/server/role/FinancialSmsManager;Landroid/service/sms/IFinancialSmsService;)Landroid/service/sms/IFinancialSmsService;

    .line 141
    iget-object v1, p0, Lcom/android/server/role/FinancialSmsManager$1;->this$0:Lcom/android/server/role/FinancialSmsManager;

    invoke-static {v1}, Lcom/android/server/role/FinancialSmsManager;->access$200(Lcom/android/server/role/FinancialSmsManager;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_63

    .line 142
    iget-object v1, p0, Lcom/android/server/role/FinancialSmsManager$1;->this$0:Lcom/android/server/role/FinancialSmsManager;

    invoke-static {v1}, Lcom/android/server/role/FinancialSmsManager;->access$200(Lcom/android/server/role/FinancialSmsManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 143
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_23
    if-ge v2, v1, :cond_5d

    .line 144
    iget-object v3, p0, Lcom/android/server/role/FinancialSmsManager$1;->this$0:Lcom/android/server/role/FinancialSmsManager;

    invoke-static {v3}, Lcom/android/server/role/FinancialSmsManager;->access$200(Lcom/android/server/role/FinancialSmsManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/role/FinancialSmsManager$Command;
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_65

    .line 146
    .local v3, "queuedCommand":Lcom/android/server/role/FinancialSmsManager$Command;
    :try_start_31
    iget-object v4, p0, Lcom/android/server/role/FinancialSmsManager$1;->this$0:Lcom/android/server/role/FinancialSmsManager;

    invoke-static {v4}, Lcom/android/server/role/FinancialSmsManager;->access$100(Lcom/android/server/role/FinancialSmsManager;)Landroid/service/sms/IFinancialSmsService;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/server/role/FinancialSmsManager$Command;->run(Landroid/service/sms/IFinancialSmsService;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3a} :catch_3b
    .catchall {:try_start_31 .. :try_end_3a} :catchall_65

    .line 149
    goto :goto_5a

    .line 147
    :catch_3b
    move-exception v4

    .line 148
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_3c
    const-string v5, "FinancialSmsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception calling "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v3  # "queuedCommand":Lcom/android/server/role/FinancialSmsManager$Command;
    .end local v4  # "e":Landroid/os/RemoteException;
    :goto_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 151
    .end local v2  # "i":I
    :cond_5d
    iget-object v2, p0, Lcom/android/server/role/FinancialSmsManager$1;->this$0:Lcom/android/server/role/FinancialSmsManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/role/FinancialSmsManager;->access$202(Lcom/android/server/role/FinancialSmsManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 153
    .end local v1  # "size":I
    :cond_63
    monitor-exit v0

    .line 154
    return-void

    .line 153
    :catchall_65
    move-exception v1

    monitor-exit v0
    :try_end_67
    .catchall {:try_start_3c .. :try_end_67} :catchall_65

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"  # Landroid/content/ComponentName;

    .line 159
    iget-object v0, p0, Lcom/android/server/role/FinancialSmsManager$1;->this$0:Lcom/android/server/role/FinancialSmsManager;

    invoke-static {v0}, Lcom/android/server/role/FinancialSmsManager;->access$000(Lcom/android/server/role/FinancialSmsManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 160
    :try_start_7
    iget-object v1, p0, Lcom/android/server/role/FinancialSmsManager$1;->this$0:Lcom/android/server/role/FinancialSmsManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/role/FinancialSmsManager;->access$102(Lcom/android/server/role/FinancialSmsManager;Landroid/service/sms/IFinancialSmsService;)Landroid/service/sms/IFinancialSmsService;

    .line 161
    monitor-exit v0

    .line 162
    return-void

    .line 161
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method
