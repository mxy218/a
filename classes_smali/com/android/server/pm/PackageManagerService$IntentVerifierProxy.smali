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

    .line 1025
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1023
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mCurrentIntentFilterVerifications:Ljava/util/ArrayList;

    .line 1026
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mContext:Landroid/content/Context;

    .line 1027
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mIntentFilterVerifierComponent:Landroid/content/ComponentName;

    .line 1028
    return-void
.end method

.method private createDomainVerificationState(IIILjava/lang/String;)Lcom/android/server/pm/IntentFilterVerificationState;
    .registers 6

    .line 1231
    new-instance v0, Lcom/android/server/pm/IntentFilterVerificationState;

    invoke-direct {v0, p1, p2, p4}, Lcom/android/server/pm/IntentFilterVerificationState;-><init>(IILjava/lang/String;)V

    .line 1233
    invoke-virtual {v0}, Lcom/android/server/pm/IntentFilterVerificationState;->setPendingState()V

    .line 1234
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter p1

    .line 1235
    :try_start_d
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    invoke-virtual {p2, p3, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1236
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mCurrentIntentFilterVerifications:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1237
    monitor-exit p1

    .line 1238
    return-object v0

    .line 1237
    :catchall_1f
    move-exception p2

    monitor-exit p1
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_1f

    throw p2
.end method

.method private getDefaultScheme()Ljava/lang/String;
    .registers 2

    .line 1031
    const-string v0, "https"

    return-object v0
.end method

.method private sendVerificationRequest(ILcom/android/server/pm/IntentFilterVerificationState;)V
    .registers 12

    .line 1064
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INTENT_FILTER_NEEDS_VERIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1065
    const-string v1, "android.content.pm.extra.INTENT_FILTER_VERIFICATION_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1068
    nop

    .line 1070
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->getDefaultScheme()Ljava/lang/String;

    move-result-object p1

    .line 1068
    const-string v1, "android.content.pm.extra.INTENT_FILTER_VERIFICATION_URI_SCHEME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1071
    nop

    .line 1073
    invoke-virtual {p2}, Lcom/android/server/pm/IntentFilterVerificationState;->getHostsString()Ljava/lang/String;

    move-result-object p1

    .line 1071
    const-string v1, "android.content.pm.extra.INTENT_FILTER_VERIFICATION_HOSTS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1074
    nop

    .line 1076
    invoke-virtual {p2}, Lcom/android/server/pm/IntentFilterVerificationState;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 1074
    const-string p2, "android.content.pm.extra.INTENT_FILTER_VERIFICATION_PACKAGE_NAME"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1077
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mIntentFilterVerifierComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1078
    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1080
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->access$000(Lcom/android/server/pm/PackageManagerService;)J

    move-result-wide v4

    .line 1081
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p1

    .line 1082
    invoke-virtual {p1, v4, v5}, Landroid/app/BroadcastOptions;->setTemporaryAppWhitelistDuration(J)V

    .line 1084
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p2}, Lcom/android/server/pm/PackageManagerService;->access$100(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/DeviceIdleController$LocalService;

    move-result-object v1

    .line 1085
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mIntentFilterVerifierComponent:Landroid/content/ComponentName;

    .line 1086
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1085
    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v8, "intent filter verifier"

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/DeviceIdleController$LocalService;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZLjava/lang/String;)V

    .line 1089
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 1090
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 1089
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1093
    return-void
.end method


# virtual methods
.method public bridge synthetic addOneIntentFilterVerification(IIILandroid/content/IntentFilter;Ljava/lang/String;)Z
    .registers 12

    .line 1020
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
    .registers 7

    .line 1214
    invoke-static {p4}, Lcom/android/server/pm/PackageManagerService;->access$200(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1215
    const/4 p1, 0x0

    return p1

    .line 1217
    :cond_8
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/IntentFilterVerificationState;

    .line 1218
    if-nez v0, :cond_18

    .line 1219
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->createDomainVerificationState(IIILjava/lang/String;)Lcom/android/server/pm/IntentFilterVerificationState;

    move-result-object v0

    .line 1225
    :cond_18
    invoke-virtual {v0, p4}, Lcom/android/server/pm/IntentFilterVerificationState;->addFilter(Landroid/content/pm/PackageParser$ActivityIntentInfo;)V

    .line 1226
    const/4 p1, 0x1

    return p1
.end method

.method public receiveVerificationResponse(I)V
    .registers 9

    .line 1096
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/IntentFilterVerificationState;

    .line 1098
    invoke-virtual {v0}, Lcom/android/server/pm/IntentFilterVerificationState;->isVerified()Z

    move-result v1

    .line 1100
    invoke-virtual {v0}, Lcom/android/server/pm/IntentFilterVerificationState;->getFilters()Ljava/util/ArrayList;

    move-result-object v2

    .line 1101
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1106
    const/4 v4, 0x0

    move v5, v4

    :goto_18
    if-ge v5, v3, :cond_26

    .line 1107
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 1108
    invoke-virtual {v6, v1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setVerified(Z)V

    .line 1106
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 1115
    :cond_26
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1117
    invoke-virtual {v0}, Lcom/android/server/pm/IntentFilterVerificationState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1120
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1121
    :try_start_36
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v5, v2}, Lcom/android/server/pm/Settings;->getIntentFilterVerificationLPr(Ljava/lang/String;)Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v5

    .line 1122
    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_c7

    .line 1123
    if-nez v5, :cond_60

    .line 1124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IntentFilterVerificationInfo not found for verificationId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " packageName:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PackageManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    return-void

    .line 1129
    :cond_60
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter p1

    .line 1130
    const/4 v3, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_6d

    .line 1131
    :try_start_69
    invoke-virtual {v5, v3}, Landroid/content/pm/IntentFilterVerificationInfo;->setStatus(I)V

    goto :goto_70

    .line 1133
    :cond_6d
    invoke-virtual {v5, v6}, Landroid/content/pm/IntentFilterVerificationInfo;->setStatus(I)V

    .line 1135
    :goto_70
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettingsLocked()V

    .line 1137
    invoke-virtual {v0}, Lcom/android/server/pm/IntentFilterVerificationState;->getUserId()I

    move-result v0

    .line 1138
    const/4 v5, -0x1

    if-eq v0, v5, :cond_bb

    .line 1139
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 1140
    invoke-virtual {v5, v2, v0}, Lcom/android/server/pm/Settings;->getIntentFilterVerificationStatusLPr(Ljava/lang/String;I)I

    move-result v5

    .line 1142
    nop

    .line 1143
    nop

    .line 1153
    if-eqz v5, :cond_a7

    if-eq v5, v6, :cond_a0

    if-eq v5, v3, :cond_8d

    goto :goto_a5

    .line 1155
    :cond_8d
    if-nez v1, :cond_a5

    .line 1157
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    .line 1158
    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getLinkedApps()Landroid/util/ArraySet;

    move-result-object v1

    .line 1159
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9e

    .line 1161
    goto :goto_9f

    .line 1159
    :cond_9e
    move v6, v4

    .line 1173
    :goto_9f
    goto :goto_ac

    .line 1190
    :cond_a0
    if-eqz v1, :cond_a5

    .line 1191
    nop

    .line 1192
    move v4, v3

    goto :goto_ac

    .line 1200
    :cond_a5
    :goto_a5
    move v6, v4

    goto :goto_ac

    .line 1178
    :cond_a7
    if-eqz v1, :cond_aa

    .line 1179
    move v4, v3

    .line 1181
    :cond_aa
    nop

    .line 1186
    nop

    .line 1200
    :goto_ac
    if-eqz v6, :cond_ba

    .line 1201
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/pm/Settings;->updateIntentFilterVerificationStatusLPw(Ljava/lang/String;II)Z

    .line 1203
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictionsLocked(I)V

    .line 1205
    :cond_ba
    goto :goto_c2

    .line 1206
    :cond_bb
    const-string v0, "PackageManager"

    const-string v1, "autoVerify ignored when installing for all users"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    :goto_c2
    monitor-exit p1

    .line 1209
    return-void

    .line 1208
    :catchall_c4
    move-exception v0

    monitor-exit p1
    :try_end_c6
    .catchall {:try_start_69 .. :try_end_c6} :catchall_c4

    throw v0

    .line 1122
    :catchall_c7
    move-exception p1

    :try_start_c8
    monitor-exit v3
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_c7

    throw p1
.end method

.method public startVerifications(I)V
    .registers 12

    .line 1037
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mCurrentIntentFilterVerifications:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 1038
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, p1, :cond_62

    .line 1039
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mCurrentIntentFilterVerifications:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1040
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    .line 1041
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/IntentFilterVerificationState;

    .line 1043
    invoke-virtual {v3}, Lcom/android/server/pm/IntentFilterVerificationState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1045
    invoke-virtual {v3}, Lcom/android/server/pm/IntentFilterVerificationState;->getFilters()Ljava/util/ArrayList;

    move-result-object v5

    .line 1046
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1047
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 1048
    move v8, v0

    :goto_32
    if-ge v8, v6, :cond_44

    .line 1049
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 1050
    invoke-virtual {v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getHostsList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1048
    add-int/lit8 v8, v8, 0x1

    goto :goto_32

    .line 1052
    :cond_44
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 1053
    :try_start_49
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6, v4, v7}, Lcom/android/server/pm/Settings;->createIntentFilterVerificationIfNeededLPw(Ljava/lang/String;Landroid/util/ArraySet;)Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v4

    if-eqz v4, :cond_58

    .line 1055
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettingsLocked()V

    .line 1057
    :cond_58
    monitor-exit v5
    :try_end_59
    .catchall {:try_start_49 .. :try_end_59} :catchall_5f

    .line 1058
    invoke-direct {p0, v2, v3}, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->sendVerificationRequest(ILcom/android/server/pm/IntentFilterVerificationState;)V

    .line 1038
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1057
    :catchall_5f
    move-exception p1

    :try_start_60
    monitor-exit v5
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw p1

    .line 1060
    :cond_62
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mCurrentIntentFilterVerifications:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1061
    return-void
.end method
