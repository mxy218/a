.class Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentVerifierProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier<",
        "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentIntentFilterVerifications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentFilterVerifierComponent:Landroid/content/ComponentName;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/content/Context;Landroid/content/ComponentName;)V
    .registers 4
    .param p2, "context"  # Landroid/content/Context;
    .param p3, "verifierComponent"  # Landroid/content/ComponentName;

    .line 1097
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1095
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mCurrentIntentFilterVerifications:Ljava/util/ArrayList;

    .line 1098
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mContext:Landroid/content/Context;

    .line 1099
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mIntentFilterVerifierComponent:Landroid/content/ComponentName;

    .line 1100
    return-void
.end method

.method private createDomainVerificationState(IIILjava/lang/String;)Lcom/android/server/pm/IntentFilterVerificationState;
    .registers 9
    .param p1, "verifierUid"  # I
    .param p2, "userId"  # I
    .param p3, "verificationId"  # I
    .param p4, "packageName"  # Ljava/lang/String;

    .line 1303
    new-instance v0, Lcom/android/server/pm/IntentFilterVerificationState;

    invoke-direct {v0, p1, p2, p4}, Lcom/android/server/pm/IntentFilterVerificationState;-><init>(IILjava/lang/String;)V

    .line 1305
    .local v0, "ivs":Lcom/android/server/pm/IntentFilterVerificationState;
    invoke-virtual {v0}, Lcom/android/server/pm/IntentFilterVerificationState;->setPendingState()V

    .line 1306
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1307
    :try_start_d
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p3, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1308
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mCurrentIntentFilterVerifications:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1309
    monitor-exit v1

    .line 1310
    return-object v0

    .line 1309
    :catchall_1f
    move-exception v2

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_1f

    throw v2
.end method

.method private getDefaultScheme()Ljava/lang/String;
    .registers 2

    .line 1103
    const-string v0, "https"

    return-object v0
.end method

.method private sendVerificationRequest(ILcom/android/server/pm/IntentFilterVerificationState;)V
    .registers 16
    .param p1, "verificationId"  # I
    .param p2, "ivs"  # Lcom/android/server/pm/IntentFilterVerificationState;

    .line 1136
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INTENT_FILTER_NEEDS_VERIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1137
    .local v0, "verificationIntent":Landroid/content/Intent;
    const-string v1, "android.content.pm.extra.INTENT_FILTER_VERIFICATION_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1140
    nop

    .line 1142
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->getDefaultScheme()Ljava/lang/String;

    move-result-object v1

    .line 1140
    const-string v2, "android.content.pm.extra.INTENT_FILTER_VERIFICATION_URI_SCHEME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1143
    nop

    .line 1145
    invoke-virtual {p2}, Lcom/android/server/pm/IntentFilterVerificationState;->getHostsString()Ljava/lang/String;

    move-result-object v1

    .line 1143
    const-string v2, "android.content.pm.extra.INTENT_FILTER_VERIFICATION_HOSTS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1146
    nop

    .line 1148
    invoke-virtual {p2}, Lcom/android/server/pm/IntentFilterVerificationState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1146
    const-string v2, "android.content.pm.extra.INTENT_FILTER_VERIFICATION_PACKAGE_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1149
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mIntentFilterVerifierComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1150
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1152
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$000(Lcom/android/server/pm/PackageManagerService;)J

    move-result-wide v10

    .line 1153
    .local v10, "whitelistTimeout":J
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v1

    .line 1154
    .local v1, "options":Landroid/app/BroadcastOptions;
    invoke-virtual {v1, v10, v11}, Landroid/app/BroadcastOptions;->setTemporaryAppWhitelistDuration(J)V

    .line 1156
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$100(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/DeviceIdleController$LocalService;

    move-result-object v12

    .line 1157
    .local v12, "idleController":Lcom/android/server/DeviceIdleController$LocalService;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mIntentFilterVerifierComponent:Landroid/content/ComponentName;

    .line 1158
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1157
    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string/jumbo v9, "intent filter verifier"

    move-object v2, v12

    move-wide v5, v10

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/DeviceIdleController$LocalService;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZLjava/lang/String;)V

    .line 1161
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 1162
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 1161
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v3, v5, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1163
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v2, :cond_72

    const-string v2, "PackageManager"

    const-string v3, "Sending IntentFilter verification broadcast"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    :cond_72
    return-void
.end method


# virtual methods
.method public bridge synthetic addOneIntentFilterVerification(IIILandroid/content/IntentFilter;Ljava/lang/String;)Z
    .registers 12

    .line 1092
    move-object v4, p4

    check-cast v4, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->addOneIntentFilterVerification(IIILandroid/content/pm/PackageParser$ActivityIntentInfo;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public addOneIntentFilterVerification(IIILandroid/content/pm/PackageParser$ActivityIntentInfo;Ljava/lang/String;)Z
    .registers 9
    .param p1, "verifierUid"  # I
    .param p2, "userId"  # I
    .param p3, "verificationId"  # I
    .param p4, "filter"  # Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .param p5, "packageName"  # Ljava/lang/String;

    .line 1286
    invoke-static {p4}, Lcom/android/server/pm/PackageManagerService;->access$200(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1287
    const/4 v0, 0x0

    return v0

    .line 1289
    :cond_8
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/IntentFilterVerificationState;

    .line 1290
    .local v0, "ivs":Lcom/android/server/pm/IntentFilterVerificationState;
    if-nez v0, :cond_18

    .line 1291
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->createDomainVerificationState(IIILjava/lang/String;)Lcom/android/server/pm/IntentFilterVerificationState;

    move-result-object v0

    .line 1294
    :cond_18
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v1, :cond_3a

    .line 1295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding verification filter for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    :cond_3a
    invoke-virtual {v0, p4}, Lcom/android/server/pm/IntentFilterVerificationState;->addFilter(Landroid/content/pm/PackageParser$ActivityIntentInfo;)V

    .line 1298
    const/4 v1, 0x1

    return v1
.end method

.method public receiveVerificationResponse(I)V
    .registers 19
    .param p1, "verificationId"  # I

    .line 1168
    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/pm/IntentFilterVerificationState;

    .line 1170
    .local v3, "ivs":Lcom/android/server/pm/IntentFilterVerificationState;
    invoke-virtual {v3}, Lcom/android/server/pm/IntentFilterVerificationState;->isVerified()Z

    move-result v4

    .line 1172
    .local v4, "verified":Z
    invoke-virtual {v3}, Lcom/android/server/pm/IntentFilterVerificationState;->getFilters()Ljava/util/ArrayList;

    move-result-object v5

    .line 1173
    .local v5, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1174
    .local v6, "count":I
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v0, :cond_45

    .line 1175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received verification response "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " for "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " filters, verified="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "PackageManager"

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    :cond_45
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_46
    if-ge v0, v6, :cond_86

    .line 1179
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 1180
    .local v7, "filter":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    invoke-virtual {v7, v4}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setVerified(Z)V

    .line 1182
    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v8, :cond_83

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IntentFilter "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " verified with result:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " and hosts:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1184
    invoke-virtual {v3}, Lcom/android/server/pm/IntentFilterVerificationState;->getHostsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1182
    const-string v9, "PackageManager"

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    .end local v7  # "filter":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_83
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 1187
    .end local v0  # "n":I
    :cond_86
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1189
    invoke-virtual {v3}, Lcom/android/server/pm/IntentFilterVerificationState;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1192
    .local v7, "packageName":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v8

    .line 1193
    :try_start_96
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v7}, Lcom/android/server/pm/Settings;->getIntentFilterVerificationLPr(Ljava/lang/String;)Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v0

    move-object v9, v0

    .line 1194
    .local v9, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    monitor-exit v8
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_179

    .line 1195
    if-nez v9, :cond_c1

    .line 1196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IntentFilterVerificationInfo not found for verificationId:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " packageName:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "PackageManager"

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    return-void

    .line 1201
    :cond_c1
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v10

    .line 1202
    const/4 v0, 0x2

    const/4 v8, 0x1

    if-eqz v4, :cond_ce

    .line 1203
    :try_start_ca
    invoke-virtual {v9, v0}, Landroid/content/pm/IntentFilterVerificationInfo;->setStatus(I)V

    goto :goto_d1

    .line 1205
    :cond_ce
    invoke-virtual {v9, v8}, Landroid/content/pm/IntentFilterVerificationInfo;->setStatus(I)V

    .line 1207
    :goto_d1
    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v11}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettingsLocked()V

    .line 1209
    invoke-virtual {v3}, Lcom/android/server/pm/IntentFilterVerificationState;->getUserId()I

    move-result v11

    .line 1210
    .local v11, "userId":I
    const/4 v12, -0x1

    if-eq v11, v12, :cond_16d

    .line 1211
    iget-object v12, v1, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 1212
    invoke-virtual {v12, v7, v11}, Lcom/android/server/pm/Settings;->getIntentFilterVerificationStatusLPr(Ljava/lang/String;I)I

    move-result v12

    .line 1214
    .local v12, "userStatus":I
    const/4 v13, 0x0

    .line 1215
    .local v13, "updatedStatus":I
    const/4 v14, 0x0

    .line 1225
    .local v14, "needUpdate":Z
    if-eqz v12, :cond_138

    if-eq v12, v8, :cond_133

    if-eq v12, v0, :cond_ef

    goto/16 :goto_15e

    .line 1227
    :cond_ef
    if-nez v4, :cond_15e

    .line 1229
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    .line 1230
    .local v0, "systemConfig":Lcom/android/server/SystemConfig;
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getLinkedApps()Landroid/util/ArraySet;

    move-result-object v8

    .line 1231
    .local v8, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_111

    .line 1233
    const/4 v14, 0x1

    .line 1235
    sget-boolean v15, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v15, :cond_10e

    .line 1236
    const-string v15, "PackageManager"

    move-object/from16 v16, v0

    .end local v0  # "systemConfig":Lcom/android/server/SystemConfig;
    .local v16, "systemConfig":Lcom/android/server/SystemConfig;
    const-string v0, "Formerly validated but now failing; demoting"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_132

    .line 1235
    .end local v16  # "systemConfig":Lcom/android/server/SystemConfig;
    .restart local v0  # "systemConfig":Lcom/android/server/SystemConfig;
    :cond_10e
    move-object/from16 v16, v0

    .end local v0  # "systemConfig":Lcom/android/server/SystemConfig;
    .restart local v16  # "systemConfig":Lcom/android/server/SystemConfig;
    goto :goto_132

    .line 1239
    .end local v16  # "systemConfig":Lcom/android/server/SystemConfig;
    .restart local v0  # "systemConfig":Lcom/android/server/SystemConfig;
    :cond_111
    move-object/from16 v16, v0

    .end local v0  # "systemConfig":Lcom/android/server/SystemConfig;
    .restart local v16  # "systemConfig":Lcom/android/server/SystemConfig;
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v0, :cond_132

    .line 1240
    const-string v0, "PackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating bundled package "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed autoVerify, but sysconfig supersedes"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    .end local v8  # "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v16  # "systemConfig":Lcom/android/server/SystemConfig;
    :cond_132
    :goto_132
    goto :goto_15e

    .line 1262
    :cond_133
    if-eqz v4, :cond_15e

    .line 1263
    const/4 v13, 0x2

    .line 1264
    const/4 v14, 0x1

    goto :goto_15e

    .line 1250
    :cond_138
    if-eqz v4, :cond_13b

    .line 1251
    const/4 v13, 0x2

    .line 1253
    :cond_13b
    const/4 v14, 0x1

    .line 1254
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v0, :cond_15e

    .line 1255
    const-string v0, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Applying update; old="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " new="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    :cond_15e
    :goto_15e
    if-eqz v14, :cond_16c

    .line 1273
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v7, v13, v11}, Lcom/android/server/pm/Settings;->updateIntentFilterVerificationStatusLPw(Ljava/lang/String;II)Z

    .line 1275
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v11}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictionsLocked(I)V

    .line 1277
    .end local v12  # "userStatus":I
    .end local v13  # "updatedStatus":I
    .end local v14  # "needUpdate":Z
    :cond_16c
    goto :goto_174

    .line 1278
    :cond_16d
    const-string v0, "PackageManager"

    const-string v2, "autoVerify ignored when installing for all users"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    .end local v11  # "userId":I
    :goto_174
    monitor-exit v10

    .line 1281
    return-void

    .line 1280
    :catchall_176
    move-exception v0

    monitor-exit v10
    :try_end_178
    .catchall {:try_start_ca .. :try_end_178} :catchall_176

    throw v0

    .line 1194
    .end local v9  # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    :catchall_179
    move-exception v0

    :try_start_17a
    monitor-exit v8
    :try_end_17b
    .catchall {:try_start_17a .. :try_end_17b} :catchall_179

    throw v0
.end method

.method public startVerifications(I)V
    .registers 13
    .param p1, "userId"  # I

    .line 1109
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mCurrentIntentFilterVerifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1110
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_7
    if-ge v1, v0, :cond_61

    .line 1111
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mCurrentIntentFilterVerifications:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1112
    .local v2, "verificationId":I
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    .line 1113
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/IntentFilterVerificationState;

    .line 1115
    .local v3, "ivs":Lcom/android/server/pm/IntentFilterVerificationState;
    invoke-virtual {v3}, Lcom/android/server/pm/IntentFilterVerificationState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1117
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/server/pm/IntentFilterVerificationState;->getFilters()Ljava/util/ArrayList;

    move-result-object v5

    .line 1118
    .local v5, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1119
    .local v6, "filterCount":I
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 1120
    .local v7, "domainsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, "m":I
    :goto_31
    if-ge v8, v6, :cond_43

    .line 1121
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 1122
    .local v9, "filter":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    invoke-virtual {v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getHostsList()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1120
    .end local v9  # "filter":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    add-int/lit8 v8, v8, 0x1

    goto :goto_31

    .line 1124
    .end local v8  # "m":I
    :cond_43
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v8

    .line 1125
    :try_start_48
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v9, v4, v7}, Lcom/android/server/pm/Settings;->createIntentFilterVerificationIfNeededLPw(Ljava/lang/String;Landroid/util/ArraySet;)Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v9

    if-eqz v9, :cond_57

    .line 1127
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v9}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettingsLocked()V

    .line 1129
    :cond_57
    monitor-exit v8
    :try_end_58
    .catchall {:try_start_48 .. :try_end_58} :catchall_5e

    .line 1130
    invoke-direct {p0, v2, v3}, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->sendVerificationRequest(ILcom/android/server/pm/IntentFilterVerificationState;)V

    .line 1110
    .end local v2  # "verificationId":I
    .end local v3  # "ivs":Lcom/android/server/pm/IntentFilterVerificationState;
    .end local v4  # "packageName":Ljava/lang/String;
    .end local v5  # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .end local v6  # "filterCount":I
    .end local v7  # "domainsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1129
    .restart local v2  # "verificationId":I
    .restart local v3  # "ivs":Lcom/android/server/pm/IntentFilterVerificationState;
    .restart local v4  # "packageName":Ljava/lang/String;
    .restart local v5  # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .restart local v6  # "filterCount":I
    .restart local v7  # "domainsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_5e
    move-exception v9

    :try_start_5f
    monitor-exit v8
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v9

    .line 1132
    .end local v1  # "n":I
    .end local v2  # "verificationId":I
    .end local v3  # "ivs":Lcom/android/server/pm/IntentFilterVerificationState;
    .end local v4  # "packageName":Ljava/lang/String;
    .end local v5  # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .end local v6  # "filterCount":I
    .end local v7  # "domainsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_61
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mCurrentIntentFilterVerifications:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1133
    return-void
.end method
