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

    .line 136
    iput-object p1, p0, Lcom/android/server/role/FinancialSmsManager$1;->this$0:Lcom/android/server/role/FinancialSmsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 4

    .line 166
    iget-object p1, p0, Lcom/android/server/role/FinancialSmsManager$1;->this$0:Lcom/android/server/role/FinancialSmsManager;

    invoke-static {p1}, Lcom/android/server/role/FinancialSmsManager;->access$000(Lcom/android/server/role/FinancialSmsManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 167
    :try_start_7
    iget-object v0, p0, Lcom/android/server/role/FinancialSmsManager$1;->this$0:Lcom/android/server/role/FinancialSmsManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/role/FinancialSmsManager;->access$102(Lcom/android/server/role/FinancialSmsManager;Landroid/service/sms/IFinancialSmsService;)Landroid/service/sms/IFinancialSmsService;

    .line 168
    monitor-exit p1

    .line 169
    return-void

    .line 168
    :catchall_f
    move-exception v0

    monitor-exit p1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .registers 4

    .line 173
    iget-object p1, p0, Lcom/android/server/role/FinancialSmsManager$1;->this$0:Lcom/android/server/role/FinancialSmsManager;

    invoke-static {p1}, Lcom/android/server/role/FinancialSmsManager;->access$000(Lcom/android/server/role/FinancialSmsManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 174
    :try_start_7
    iget-object v0, p0, Lcom/android/server/role/FinancialSmsManager$1;->this$0:Lcom/android/server/role/FinancialSmsManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/role/FinancialSmsManager;->access$102(Lcom/android/server/role/FinancialSmsManager;Landroid/service/sms/IFinancialSmsService;)Landroid/service/sms/IFinancialSmsService;

    .line 175
    monitor-exit p1

    .line 176
    return-void

    .line 175
    :catchall_f
    move-exception v0

    monitor-exit p1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9

    .line 139
    iget-object v0, p0, Lcom/android/server/role/FinancialSmsManager$1;->this$0:Lcom/android/server/role/FinancialSmsManager;

    invoke-static {v0}, Lcom/android/server/role/FinancialSmsManager;->access$000(Lcom/android/server/role/FinancialSmsManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 140
    :try_start_7
    iget-object v1, p0, Lcom/android/server/role/FinancialSmsManager$1;->this$0:Lcom/android/server/role/FinancialSmsManager;

    invoke-static {p2}, Landroid/service/sms/IFinancialSmsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/sms/IFinancialSmsService;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/server/role/FinancialSmsManager;->access$102(Lcom/android/server/role/FinancialSmsManager;Landroid/service/sms/IFinancialSmsService;)Landroid/service/sms/IFinancialSmsService;

    .line 141
    iget-object p2, p0, Lcom/android/server/role/FinancialSmsManager$1;->this$0:Lcom/android/server/role/FinancialSmsManager;

    invoke-static {p2}, Lcom/android/server/role/FinancialSmsManager;->access$200(Lcom/android/server/role/FinancialSmsManager;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_63

    .line 142
    iget-object p2, p0, Lcom/android/server/role/FinancialSmsManager$1;->this$0:Lcom/android/server/role/FinancialSmsManager;

    invoke-static {p2}, Lcom/android/server/role/FinancialSmsManager;->access$200(Lcom/android/server/role/FinancialSmsManager;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 143
    const/4 v1, 0x0

    :goto_23
    if-ge v1, p2, :cond_5d

    .line 144
    iget-object v2, p0, Lcom/android/server/role/FinancialSmsManager$1;->this$0:Lcom/android/server/role/FinancialSmsManager;

    invoke-static {v2}, Lcom/android/server/role/FinancialSmsManager;->access$200(Lcom/android/server/role/FinancialSmsManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/role/FinancialSmsManager$Command;
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_65

    .line 146
    :try_start_31
    iget-object v3, p0, Lcom/android/server/role/FinancialSmsManager$1;->this$0:Lcom/android/server/role/FinancialSmsManager;

    invoke-static {v3}, Lcom/android/server/role/FinancialSmsManager;->access$100(Lcom/android/server/role/FinancialSmsManager;)Landroid/service/sms/IFinancialSmsService;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/role/FinancialSmsManager$Command;->run(Landroid/service/sms/IFinancialSmsService;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3a} :catch_3b
    .catchall {:try_start_31 .. :try_end_3a} :catchall_65

    .line 149
    goto :goto_5a

    .line 147
    :catch_3b
    move-exception v2

    .line 148
    :try_start_3c
    const-string v3, "FinancialSmsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception calling "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 151
    :cond_5d
    iget-object p1, p0, Lcom/android/server/role/FinancialSmsManager$1;->this$0:Lcom/android/server/role/FinancialSmsManager;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/server/role/FinancialSmsManager;->access$202(Lcom/android/server/role/FinancialSmsManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 153
    :cond_63
    monitor-exit v0

    .line 154
    return-void

    .line 153
    :catchall_65
    move-exception p1

    monitor-exit v0
    :try_end_67
    .catchall {:try_start_3c .. :try_end_67} :catchall_65

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .line 159
    iget-object p1, p0, Lcom/android/server/role/FinancialSmsManager$1;->this$0:Lcom/android/server/role/FinancialSmsManager;

    invoke-static {p1}, Lcom/android/server/role/FinancialSmsManager;->access$000(Lcom/android/server/role/FinancialSmsManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 160
    :try_start_7
    iget-object v0, p0, Lcom/android/server/role/FinancialSmsManager$1;->this$0:Lcom/android/server/role/FinancialSmsManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/role/FinancialSmsManager;->access$102(Lcom/android/server/role/FinancialSmsManager;Landroid/service/sms/IFinancialSmsService;)Landroid/service/sms/IFinancialSmsService;

    .line 161
    monitor-exit p1

    .line 162
    return-void

    .line 161
    :catchall_f
    move-exception v0

    monitor-exit p1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v0
.end method
