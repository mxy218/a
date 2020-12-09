.class Lcom/android/server/am/PersistentConnection$1;
.super Ljava/lang/Object;
.source "PersistentConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PersistentConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/PersistentConnection;


# direct methods
.method constructor <init>(Lcom/android/server/am/PersistentConnection;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 5

    .line 161
    iget-object p1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {p1}, Lcom/android/server/am/PersistentConnection;->access$000(Lcom/android/server/am/PersistentConnection;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 162
    :try_start_7
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v0}, Lcom/android/server/am/PersistentConnection;->access$100(Lcom/android/server/am/PersistentConnection;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 164
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v0}, Lcom/android/server/am/PersistentConnection;->access$200(Lcom/android/server/am/PersistentConnection;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binding died: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v2}, Lcom/android/server/am/PersistentConnection;->access$300(Lcom/android/server/am/PersistentConnection;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    .line 165
    invoke-static {v2}, Lcom/android/server/am/PersistentConnection;->access$400(Lcom/android/server/am/PersistentConnection;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " but not bound, ignore."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    monitor-exit p1

    return-void

    .line 169
    :cond_48
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v0}, Lcom/android/server/am/PersistentConnection;->access$200(Lcom/android/server/am/PersistentConnection;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binding died: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v2}, Lcom/android/server/am/PersistentConnection;->access$300(Lcom/android/server/am/PersistentConnection;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    .line 170
    invoke-static {v2}, Lcom/android/server/am/PersistentConnection;->access$400(Lcom/android/server/am/PersistentConnection;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v0}, Lcom/android/server/am/PersistentConnection;->access$1208(Lcom/android/server/am/PersistentConnection;)I

    .line 174
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-virtual {v0}, Lcom/android/server/am/PersistentConnection;->scheduleRebindLocked()V

    .line 175
    monitor-exit p1

    .line 176
    return-void

    .line 175
    :catchall_86
    move-exception v0

    monitor-exit p1
    :try_end_88
    .catchall {:try_start_7 .. :try_end_88} :catchall_86

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    .line 121
    iget-object p1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {p1}, Lcom/android/server/am/PersistentConnection;->access$000(Lcom/android/server/am/PersistentConnection;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 122
    :try_start_7
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v0}, Lcom/android/server/am/PersistentConnection;->access$100(Lcom/android/server/am/PersistentConnection;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 126
    iget-object p2, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {p2}, Lcom/android/server/am/PersistentConnection;->access$200(Lcom/android/server/am/PersistentConnection;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v1}, Lcom/android/server/am/PersistentConnection;->access$300(Lcom/android/server/am/PersistentConnection;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    .line 127
    invoke-static {v1}, Lcom/android/server/am/PersistentConnection;->access$400(Lcom/android/server/am/PersistentConnection;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " but not bound, ignore."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    monitor-exit p1

    return-void

    .line 130
    :cond_48
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v0}, Lcom/android/server/am/PersistentConnection;->access$200(Lcom/android/server/am/PersistentConnection;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v2}, Lcom/android/server/am/PersistentConnection;->access$300(Lcom/android/server/am/PersistentConnection;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    .line 131
    invoke-static {v2}, Lcom/android/server/am/PersistentConnection;->access$400(Lcom/android/server/am/PersistentConnection;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v0}, Lcom/android/server/am/PersistentConnection;->access$508(Lcom/android/server/am/PersistentConnection;)I

    .line 135
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/am/PersistentConnection;->access$602(Lcom/android/server/am/PersistentConnection;Z)Z

    .line 136
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-virtual {v1}, Lcom/android/server/am/PersistentConnection;->injectUptimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/server/am/PersistentConnection;->access$702(Lcom/android/server/am/PersistentConnection;J)J

    .line 137
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-virtual {v1, p2}, Lcom/android/server/am/PersistentConnection;->asInterface(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/server/am/PersistentConnection;->access$802(Lcom/android/server/am/PersistentConnection;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object p2, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {p2}, Lcom/android/server/am/PersistentConnection;->access$900(Lcom/android/server/am/PersistentConnection;)V

    .line 140
    monitor-exit p1

    .line 141
    return-void

    .line 140
    :catchall_a2
    move-exception p2

    monitor-exit p1
    :try_end_a4
    .catchall {:try_start_7 .. :try_end_a4} :catchall_a2

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    .line 145
    iget-object p1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {p1}, Lcom/android/server/am/PersistentConnection;->access$000(Lcom/android/server/am/PersistentConnection;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 146
    :try_start_7
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v0}, Lcom/android/server/am/PersistentConnection;->access$200(Lcom/android/server/am/PersistentConnection;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v2}, Lcom/android/server/am/PersistentConnection;->access$300(Lcom/android/server/am/PersistentConnection;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    .line 147
    invoke-static {v2}, Lcom/android/server/am/PersistentConnection;->access$400(Lcom/android/server/am/PersistentConnection;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v0}, Lcom/android/server/am/PersistentConnection;->access$1008(Lcom/android/server/am/PersistentConnection;)I

    .line 151
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v0}, Lcom/android/server/am/PersistentConnection;->access$1100(Lcom/android/server/am/PersistentConnection;)V

    .line 155
    monitor-exit p1

    .line 156
    return-void

    .line 155
    :catchall_45
    move-exception v0

    monitor-exit p1
    :try_end_47
    .catchall {:try_start_7 .. :try_end_47} :catchall_45

    throw v0
.end method
