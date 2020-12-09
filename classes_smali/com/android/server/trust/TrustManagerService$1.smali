.class Lcom/android/server/trust/TrustManagerService$1;
.super Landroid/app/trust/ITrustManager$Stub;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/trust/TrustManagerService;)V
    .registers 2

    .line 1071
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-direct {p0}, Landroid/app/trust/ITrustManager$Stub;-><init>()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/trust/TrustManagerService$1;Ljava/io/PrintWriter;Landroid/content/pm/UserInfo;Z)V
    .registers 4

    .line 1071
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/trust/TrustManagerService$1;->dumpUser(Ljava/io/PrintWriter;Landroid/content/pm/UserInfo;Z)V

    return-void
.end method

.method private dumpBool(Z)Ljava/lang/String;
    .registers 2

    .line 1231
    if-eqz p1, :cond_5

    const-string p1, "1"

    goto :goto_7

    :cond_5
    const-string p1, "0"

    :goto_7
    return-object p1
.end method

.method private dumpHex(I)Ljava/lang/String;
    .registers 4

    .line 1235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private dumpUser(Ljava/io/PrintWriter;Landroid/content/pm/UserInfo;Z)V
    .registers 14

    .line 1184
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    .line 1185
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget v1, p2, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 1184
    const-string v1, " User \"%s\" (id=%d, flags=%#x)"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1186
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v0

    if-nez v0, :cond_30

    .line 1187
    const-string p2, "(managed profile)"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1188
    const-string p2, "   disabled because switching to this user is not possible."

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1189
    return-void

    .line 1191
    :cond_30
    if-eqz p3, :cond_37

    .line 1192
    const-string p3, " (current)"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1194
    :cond_37
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ": trusted="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0, v1}, Lcom/android/server/trust/TrustManagerService;->access$1000(Lcom/android/server/trust/TrustManagerService;I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/trust/TrustManagerService$1;->dumpBool(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1195
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", trustManaged="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0, v1}, Lcom/android/server/trust/TrustManagerService;->access$1100(Lcom/android/server/trust/TrustManagerService;I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/trust/TrustManagerService$1;->dumpBool(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1196
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", deviceLocked="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService;->isDeviceLockedInner(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/trust/TrustManagerService$1;->dumpBool(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1197
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", strongAuthRequired="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 1198
    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$1200(Lcom/android/server/trust/TrustManagerService;)Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    move-result-object v0

    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    .line 1197
    invoke-direct {p0, v0}, Lcom/android/server/trust/TrustManagerService$1;->dumpHex(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1199
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1200
    const-string p3, "   Enabled agents:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1201
    nop

    .line 1202
    new-instance p3, Landroid/util/ArraySet;

    invoke-direct {p3}, Landroid/util/ArraySet;-><init>()V

    .line 1203
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$1300(Lcom/android/server/trust/TrustManagerService;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v9, v2

    :goto_d4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1cb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 1204
    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    iget v4, p2, Landroid/content/pm/UserInfo;->id:I

    if-eq v2, v4, :cond_e7

    goto :goto_d4

    .line 1205
    :cond_e7
    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->isTrusted()Z

    move-result v2

    .line 1206
    const-string v4, "    "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1207
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "     bound="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v5}, Lcom/android/server/trust/TrustAgentWrapper;->isBound()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/trust/TrustManagerService$1;->dumpBool(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1208
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", connected="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v5}, Lcom/android/server/trust/TrustAgentWrapper;->isConnected()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/trust/TrustManagerService$1;->dumpBool(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1209
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", managingTrust="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v5}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/trust/TrustManagerService$1;->dumpBool(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1210
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", trusted="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/android/server/trust/TrustManagerService$1;->dumpBool(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1211
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1212
    if-eqz v2, :cond_191

    .line 1213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      message=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v4}, Lcom/android/server/trust/TrustAgentWrapper;->getMessage()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1215
    :cond_191
    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1bc

    .line 1216
    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    .line 1217
    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->getScheduledRestartUptimeMillis()J

    move-result-wide v4

    .line 1218
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 1216
    invoke-static {v4, v5}, Lcom/android/server/trust/TrustArchive;->formatDuration(J)Ljava/lang/String;

    move-result-object v2

    .line 1219
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "      restartScheduledAt="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1221
    :cond_1bc
    iget-object v1, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-static {v1}, Lcom/android/server/trust/TrustArchive;->getSimpleName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c9

    .line 1222
    move v9, v3

    .line 1224
    :cond_1c9
    goto/16 :goto_d4

    .line 1225
    :cond_1cb
    const-string p3, "   Events:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1226
    iget-object p3, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v4, p3, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    const/16 v6, 0x32

    iget v7, p2, Landroid/content/pm/UserInfo;->id:I

    const-string v8, "    "

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/trust/TrustArchive;->dump(Ljava/io/PrintWriter;IILjava/lang/String;Z)V

    .line 1227
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1228
    return-void
.end method

.method private enforceListenerPermission()V
    .registers 4

    .line 1156
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$600(Lcom/android/server/trust/TrustManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.TRUST_LISTENER"

    const-string/jumbo v2, "register trust listener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    return-void
.end method

.method private enforceReportPermission()V
    .registers 4

    .line 1151
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$600(Lcom/android/server/trust/TrustManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string/jumbo v2, "reporting trust events"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    return-void
.end method

.method static synthetic lambda$reportKeyguardShowingChanged$0()V
    .registers 0

    .line 1103
    return-void
.end method


# virtual methods
.method public clearAllBiometricRecognized(Landroid/hardware/biometrics/BiometricSourceType;)V
    .registers 5

    .line 1294
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceReportPermission()V

    .line 1295
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p1}, Lcom/android/server/trust/TrustManagerService;->access$1600(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    monitor-enter p1

    .line 1296
    :try_start_a
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$1600(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1297
    monitor-exit p1
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_26

    .line 1298
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p1}, Lcom/android/server/trust/TrustManagerService;->access$300(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xe

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 1299
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1300
    return-void

    .line 1297
    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit p1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 1162
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p1}, Lcom/android/server/trust/TrustManagerService;->access$600(Lcom/android/server/trust/TrustManagerService;)Landroid/content/Context;

    move-result-object p1

    const-string p3, "TrustManagerService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_f

    return-void

    .line 1163
    :cond_f
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {p1}, Lcom/android/server/trust/TrustManagerService;->isSafeMode()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 1164
    const-string p1, "disabled because the system is in safe mode."

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1165
    return-void

    .line 1167
    :cond_1d
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p1}, Lcom/android/server/trust/TrustManagerService;->access$700(Lcom/android/server/trust/TrustManagerService;)Z

    move-result p1

    if-nez p1, :cond_2b

    .line 1168
    const-string p1, "disabled because the third-party apps can\'t run yet."

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1169
    return-void

    .line 1171
    :cond_2b
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p1}, Lcom/android/server/trust/TrustManagerService;->access$800(Lcom/android/server/trust/TrustManagerService;)Landroid/os/UserManager;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object p1

    .line 1172
    iget-object p3, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p3}, Lcom/android/server/trust/TrustManagerService;->access$300(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object p3

    new-instance v0, Lcom/android/server/trust/TrustManagerService$1$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/trust/TrustManagerService$1$1;-><init>(Lcom/android/server/trust/TrustManagerService$1;Ljava/io/PrintWriter;Ljava/util/List;)V

    const-wide/16 p1, 0x5dc

    invoke-virtual {p3, v0, p1, p2}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 1181
    return-void
.end method

.method public isDeviceLocked(I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1120
    invoke-static {}, Lcom/android/server/trust/TrustManagerService$1;->getCallingPid()I

    move-result v0

    invoke-static {}, Lcom/android/server/trust/TrustManagerService$1;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "isDeviceLocked"

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1123
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1125
    :try_start_16
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->access$400(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v2

    if-nez v2, :cond_28

    .line 1126
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2, p1}, Lcom/android/server/trust/TrustManagerService;->access$500(Lcom/android/server/trust/TrustManagerService;I)I

    move-result p1

    .line 1128
    :cond_28
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/trust/TrustManagerService;->isDeviceLockedInner(I)Z

    move-result p1
    :try_end_2e
    .catchall {:try_start_16 .. :try_end_2e} :catchall_32

    .line 1130
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1128
    return p1

    .line 1130
    :catchall_32
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public isDeviceSecure(I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1136
    invoke-static {}, Lcom/android/server/trust/TrustManagerService$1;->getCallingPid()I

    move-result v0

    invoke-static {}, Lcom/android/server/trust/TrustManagerService$1;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "isDeviceSecure"

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1139
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1141
    :try_start_16
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->access$400(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v2

    if-nez v2, :cond_28

    .line 1142
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2, p1}, Lcom/android/server/trust/TrustManagerService;->access$500(Lcom/android/server/trust/TrustManagerService;I)I

    move-result p1

    .line 1144
    :cond_28
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->access$400(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1
    :try_end_32
    .catchall {:try_start_16 .. :try_end_32} :catchall_36

    .line 1146
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1144
    return p1

    .line 1146
    :catchall_36
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public isTrustUsuallyManaged(I)Z
    .registers 5

    .line 1274
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$600(Lcom/android/server/trust/TrustManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.TRUST_LISTENER"

    const-string/jumbo v2, "query trust state"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0, p1}, Lcom/android/server/trust/TrustManagerService;->access$1500(Lcom/android/server/trust/TrustManagerService;I)Z

    move-result p1

    return p1
.end method

.method public registerTrustListener(Landroid/app/trust/ITrustListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1108
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceListenerPermission()V

    .line 1109
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$300(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1110
    return-void
.end method

.method public reportEnabledTrustAgentsChanged(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1088
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceReportPermission()V

    .line 1090
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p1}, Lcom/android/server/trust/TrustManagerService;->access$300(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1091
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p1}, Lcom/android/server/trust/TrustManagerService;->access$300(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1092
    return-void
.end method

.method public reportKeyguardShowingChanged()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1096
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceReportPermission()V

    .line 1098
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$300(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1099
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$300(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1103
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$300(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/trust/-$$Lambda$TrustManagerService$1$98HKBkg-C1PLlz_Q1vJz1OJtw4c;->INSTANCE:Lcom/android/server/trust/-$$Lambda$TrustManagerService$1$98HKBkg-C1PLlz_Q1vJz1OJtw4c;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 1104
    return-void
.end method

.method public reportUnlockAttempt(ZI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1074
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceReportPermission()V

    .line 1075
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$300(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 1076
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1077
    return-void
.end method

.method public reportUnlockLockout(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1081
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceReportPermission()V

    .line 1082
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$300(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 1083
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1084
    return-void
.end method

.method public setDeviceLockedForUser(IZ)V
    .registers 8

    .line 1244
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceReportPermission()V

    .line 1245
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1247
    :try_start_7
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->access$400(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_65

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 1248
    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->access$400(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 1249
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->access$1400(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    monitor-enter v2
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_6a

    .line 1250
    :try_start_26
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v3}, Lcom/android/server/trust/TrustManagerService;->access$1400(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1251
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_62

    .line 1253
    :try_start_30
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/security/KeyStore;->onUserLockedStateChanged(IZ)V
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_6a

    .line 1255
    if-eqz p2, :cond_42

    .line 1257
    :try_start_39
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/app/IActivityManager;->notifyLockedProfile(I)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_40} :catch_41
    .catchall {:try_start_39 .. :try_end_40} :catchall_6a

    .line 1259
    goto :goto_42

    .line 1258
    :catch_41
    move-exception p2

    .line 1261
    :cond_42
    :goto_42
    :try_start_42
    new-instance p2, Landroid/content/Intent;

    const-string v2, "android.intent.action.DEVICE_LOCKED_CHANGED"

    invoke-direct {p2, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1262
    const/high16 v2, 0x40000000  # 2.0f

    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1263
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1264
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p1}, Lcom/android/server/trust/TrustManagerService;->access$600(Lcom/android/server/trust/TrustManagerService;)Landroid/content/Context;

    move-result-object p1

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string v3, "android.permission.TRUST_LISTENER"

    const/4 v4, 0x0

    invoke-virtual {p1, p2, v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_61
    .catchall {:try_start_42 .. :try_end_61} :catchall_6a

    goto :goto_65

    .line 1251
    :catchall_62
    move-exception p1

    :try_start_63
    monitor-exit v2
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    :try_start_64
    throw p1
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_6a

    .line 1268
    :cond_65
    :goto_65
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1269
    nop

    .line 1270
    return-void

    .line 1268
    :catchall_6a
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public unlockedByBiometricForUser(ILandroid/hardware/biometrics/BiometricSourceType;)V
    .registers 5

    .line 1281
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceReportPermission()V

    .line 1282
    iget-object p2, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p2}, Lcom/android/server/trust/TrustManagerService;->access$1600(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object p2

    monitor-enter p2

    .line 1283
    :try_start_a
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$1600(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1284
    monitor-exit p2
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_2f

    .line 1287
    iget-object p2, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p2}, Lcom/android/server/trust/TrustManagerService;->access$1700(Lcom/android/server/trust/TrustManagerService;)Lcom/android/server/trust/TrustManagerService$SettingsObserver;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->getTrustAgentsExtendUnlock()Z

    move-result p2

    .line 1288
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$300(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 1289
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1290
    return-void

    .line 1284
    :catchall_2f
    move-exception p1

    :try_start_30
    monitor-exit p2
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method public unregisterTrustListener(Landroid/app/trust/ITrustListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1114
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceListenerPermission()V

    .line 1115
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$300(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1116
    return-void
.end method
