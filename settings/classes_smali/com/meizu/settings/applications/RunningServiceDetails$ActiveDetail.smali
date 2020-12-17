.class Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;
.super Ljava/lang/Object;
.source "RunningServiceDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/RunningServiceDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActiveDetail"
.end annotation


# instance fields
.field mActiveItem:Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;

.field mInstaller:Landroid/content/ComponentName;

.field mManageIntent:Landroid/app/PendingIntent;

.field mReportButton:Landroid/widget/Button;

.field mRootView:Landroid/view/View;

.field mServiceItem:Lcom/meizu/settings/applications/RunningState$ServiceItem;

.field mStopButton:Landroid/widget/Button;

.field mViewHolder:Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;

.field final synthetic this$0:Lcom/meizu/settings/applications/RunningServiceDetails;


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/RunningServiceDetails;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/meizu/settings/applications/RunningServiceDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 14

    .line 128
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    const/4 v1, 0x0

    const-string v2, "RunningServicesDetails"

    if-ne p1, v0, :cond_142

    .line 129
    new-instance p1, Landroid/app/ApplicationErrorReport;

    invoke-direct {p1}, Landroid/app/ApplicationErrorReport;-><init>()V

    const/4 v0, 0x5

    .line 130
    iput v0, p1, Landroid/app/ApplicationErrorReport;->type:I

    .line 131
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/meizu/settings/applications/RunningState$ServiceItem;

    iget-object v0, v0, Lcom/meizu/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iput-object v0, p1, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/meizu/settings/applications/RunningState$ServiceItem;

    iget-object v0, v0, Lcom/meizu/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    iput-object v0, p1, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p1, Landroid/app/ApplicationErrorReport;->time:J

    .line 135
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/meizu/settings/applications/RunningState$ServiceItem;

    iget-object v0, v0, Lcom/meizu/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v3, 0x1

    and-int/2addr v0, v3

    if-eqz v0, :cond_3b

    move v0, v3

    goto :goto_3c

    :cond_3b
    move v0, v1

    :goto_3c
    iput-boolean v0, p1, Landroid/app/ApplicationErrorReport;->systemApp:Z

    .line 137
    new-instance v0, Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    invoke-direct {v0}, Landroid/app/ApplicationErrorReport$RunningServiceInfo;-><init>()V

    .line 139
    iget-object v4, p0, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;

    iget-wide v4, v4, Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;->mFirstRunTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_59

    .line 140
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;

    iget-wide v6, v6, Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;->mFirstRunTime:J

    sub-long/2addr v4, v6

    iput-wide v4, v0, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->durationMillis:J

    goto :goto_5d

    :cond_59
    const-wide/16 v4, -0x1

    .line 142
    iput-wide v4, v0, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->durationMillis:J

    .line 144
    :goto_5d
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/meizu/settings/applications/RunningState$ServiceItem;

    iget-object v5, v5, Lcom/meizu/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/meizu/settings/applications/RunningState$ServiceItem;

    iget-object v6, v6, Lcom/meizu/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v5, p0, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/meizu/settings/applications/RunningServiceDetails;

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "service_dump.txt"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x0

    .line 149
    :try_start_7c
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_81} :catch_aa
    .catchall {:try_start_7c .. :try_end_81} :catchall_a6

    :try_start_81
    const-string v8, "activity"

    .line 150
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const-string v11, "-a"

    aput-object v11, v10, v1

    const-string/jumbo v1, "service"

    aput-object v1, v10, v3

    const/4 v1, 0x2

    .line 151
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v1

    .line 150
    invoke-static {v8, v9, v10}, Landroid/os/Debug;->dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)Z
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_9d} :catch_a4
    .catchall {:try_start_81 .. :try_end_9d} :catchall_a1

    .line 155
    :goto_9d
    :try_start_9d
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_c3

    goto :goto_c3

    :catchall_a1
    move-exception p0

    goto/16 :goto_13c

    :catch_a4
    move-exception v1

    goto :goto_ac

    :catchall_a6
    move-exception p0

    move-object v7, v6

    goto/16 :goto_13c

    :catch_aa
    move-exception v1

    move-object v7, v6

    .line 153
    :goto_ac
    :try_start_ac
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t dump service: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c0
    .catchall {:try_start_ac .. :try_end_c0} :catchall_a1

    if-eqz v7, :cond_c3

    goto :goto_9d

    .line 159
    :catch_c3
    :cond_c3
    :goto_c3
    :try_start_c3
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c8} :catch_e5
    .catchall {:try_start_c3 .. :try_end_c8} :catchall_e3

    .line 160
    :try_start_c8
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v3, v6

    new-array v3, v3, [B

    .line 161
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 162
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v6, v0, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->serviceDetails:Ljava/lang/String;
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_d9} :catch_e0
    .catchall {:try_start_c8 .. :try_end_d9} :catchall_dd

    .line 166
    :try_start_d9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_dc} :catch_ff

    goto :goto_ff

    :catchall_dd
    move-exception p0

    move-object v6, v1

    goto :goto_136

    :catch_e0
    move-exception v3

    move-object v6, v1

    goto :goto_e6

    :catchall_e3
    move-exception p0

    goto :goto_136

    :catch_e5
    move-exception v3

    .line 164
    :goto_e6
    :try_start_e6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t read service dump: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_fa
    .catchall {:try_start_e6 .. :try_end_fa} :catchall_e3

    if-eqz v6, :cond_ff

    .line 166
    :try_start_fc
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_fc .. :try_end_ff} :catch_ff

    .line 168
    :catch_ff
    :cond_ff
    :goto_ff
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Details: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->serviceDetails:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iput-object v0, p1, Landroid/app/ApplicationErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.APP_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.BUG_REPORT"

    .line 173
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 174
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 175
    iget-object p0, p0, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/meizu/settings/applications/RunningServiceDetails;

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    :goto_136
    if-eqz v6, :cond_13b

    .line 166
    :try_start_138
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_13b
    .catch Ljava/io/IOException; {:try_start_138 .. :try_end_13b} :catch_13b

    :catch_13b
    :cond_13b
    throw p0

    :goto_13c
    if-eqz v7, :cond_141

    .line 155
    :try_start_13e
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_141
    .catch Ljava/io/IOException; {:try_start_13e .. :try_end_141} :catch_141

    :catch_141
    :cond_141
    throw p0

    .line 180
    :cond_142
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/meizu/settings/applications/RunningServiceDetails;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object p1

    const-string/jumbo v0, "stop_service"

    invoke-virtual {p1, v0, v2, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_17b

    .line 185
    :try_start_156
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/meizu/settings/applications/RunningServiceDetails;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object p0, p0, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x10080000

    const/high16 v7, 0x80000

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/app/Activity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_16b
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_156 .. :try_end_16b} :catch_176
    .catch Ljava/lang/IllegalArgumentException; {:try_start_156 .. :try_end_16b} :catch_171
    .catch Landroid/content/ActivityNotFoundException; {:try_start_156 .. :try_end_16b} :catch_16c

    goto :goto_1ac

    :catch_16c
    move-exception p0

    .line 194
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1ac

    :catch_171
    move-exception p0

    .line 192
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1ac

    :catch_176
    move-exception p0

    .line 190
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1ac

    .line 196
    :cond_17b
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/meizu/settings/applications/RunningState$ServiceItem;

    if-eqz p1, :cond_183

    .line 197
    invoke-virtual {p0, v1}, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->stopActiveService(Z)V

    goto :goto_1ac

    .line 198
    :cond_183
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;

    iget-object p1, p1, Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/meizu/settings/applications/RunningState$BaseItem;

    iget-boolean v0, p1, Lcom/meizu/settings/applications/RunningState$BaseItem;->mBackground:Z

    if-eqz v0, :cond_19c

    .line 200
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/meizu/settings/applications/RunningServiceDetails;

    iget-object v0, v0, Lcom/meizu/settings/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    iget-object p1, p1, Lcom/meizu/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object p1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 201
    iget-object p0, p0, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/meizu/settings/applications/RunningServiceDetails;

    invoke-static {p0}, Lcom/meizu/settings/applications/RunningServiceDetails;->access$100(Lcom/meizu/settings/applications/RunningServiceDetails;)V

    goto :goto_1ac

    .line 204
    :cond_19c
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/meizu/settings/applications/RunningServiceDetails;

    iget-object v0, v0, Lcom/meizu/settings/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    iget-object p1, p1, Lcom/meizu/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object p1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 205
    iget-object p0, p0, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/meizu/settings/applications/RunningServiceDetails;

    invoke-static {p0}, Lcom/meizu/settings/applications/RunningServiceDetails;->access$100(Lcom/meizu/settings/applications/RunningServiceDetails;)V

    :goto_1ac
    return-void
.end method

.method stopActiveService(Z)V
    .registers 5

    .line 105
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/meizu/settings/applications/RunningState$ServiceItem;

    const/4 v1, 0x1

    if-nez p1, :cond_18

    .line 107
    iget-object p1, v0, Lcom/meizu/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_18

    .line 108
    iget-object p0, p0, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/meizu/settings/applications/RunningServiceDetails;

    iget-object p1, v0, Lcom/meizu/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-static {p0, p1}, Lcom/meizu/settings/applications/RunningServiceDetails;->access$000(Lcom/meizu/settings/applications/RunningServiceDetails;Landroid/content/ComponentName;)V

    return-void

    .line 112
    :cond_18
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/meizu/settings/applications/RunningServiceDetails;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v0, v0, Lcom/meizu/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    .line 113
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/meizu/settings/applications/RunningServiceDetails;

    iget-object v0, p1, Lcom/meizu/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/meizu/settings/applications/RunningState$MergedItem;

    if-nez v0, :cond_3f

    .line 115
    iget-object p1, p1, Lcom/meizu/settings/applications/RunningServiceDetails;->mState:Lcom/meizu/settings/applications/RunningState;

    invoke-virtual {p1}, Lcom/meizu/settings/applications/RunningState;->updateNow()V

    .line 116
    iget-object p0, p0, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/meizu/settings/applications/RunningServiceDetails;

    invoke-static {p0}, Lcom/meizu/settings/applications/RunningServiceDetails;->access$100(Lcom/meizu/settings/applications/RunningServiceDetails;)V

    goto :goto_5f

    .line 117
    :cond_3f
    iget-boolean p1, p1, Lcom/meizu/settings/applications/RunningServiceDetails;->mShowBackground:Z

    if-nez p1, :cond_58

    iget-object p1, v0, Lcom/meizu/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gt p1, v1, :cond_58

    .line 120
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/meizu/settings/applications/RunningServiceDetails;

    iget-object p1, p1, Lcom/meizu/settings/applications/RunningServiceDetails;->mState:Lcom/meizu/settings/applications/RunningState;

    invoke-virtual {p1}, Lcom/meizu/settings/applications/RunningState;->updateNow()V

    .line 121
    iget-object p0, p0, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/meizu/settings/applications/RunningServiceDetails;

    invoke-static {p0}, Lcom/meizu/settings/applications/RunningServiceDetails;->access$100(Lcom/meizu/settings/applications/RunningServiceDetails;)V

    goto :goto_5f

    .line 123
    :cond_58
    iget-object p0, p0, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/meizu/settings/applications/RunningServiceDetails;

    iget-object p0, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mState:Lcom/meizu/settings/applications/RunningState;

    invoke-virtual {p0}, Lcom/meizu/settings/applications/RunningState;->updateNow()V

    :goto_5f
    return-void
.end method
