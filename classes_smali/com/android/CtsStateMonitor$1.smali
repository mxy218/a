.class Lcom/android/CtsStateMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "CtsStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/CtsStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/CtsStateMonitor;


# direct methods
.method constructor <init>(Lcom/android/CtsStateMonitor;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/CtsStateMonitor;

    .line 124
    iput-object p1, p0, Lcom/android/CtsStateMonitor$1;->this$0:Lcom/android/CtsStateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 127
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 130
    .local v3, "uid":I
    invoke-static {}, Lcom/android/CtsStateMonitor;->access$000()Landroid/util/SparseIntArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    .line 131
    .local v4, "tmpUidCount":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " onReceive packageName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "CtsStateMonitor"

    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string/jumbo v8, "persist.sys.cp_on_runtime"

    const-string v9, ",count="

    const-string/jumbo v10, "mIsCtsRunning = "

    const/4 v11, 0x1

    if-eqz v5, :cond_124

    .line 133
    iget-object v5, p0, Lcom/android/CtsStateMonitor$1;->this$0:Lcom/android/CtsStateMonitor;

    invoke-static {v5, v1}, Lcom/android/CtsStateMonitor;->access$100(Lcom/android/CtsStateMonitor;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ec

    iget-object v5, p0, Lcom/android/CtsStateMonitor$1;->this$0:Lcom/android/CtsStateMonitor;

    invoke-static {v5, v1, v3}, Lcom/android/CtsStateMonitor;->access$200(Lcom/android/CtsStateMonitor;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Lcom/android/CtsStateMonitor;->access$300(Lcom/android/CtsStateMonitor;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ec

    .line 134
    invoke-static {}, Lcom/android/CtsStateMonitor;->access$000()Landroid/util/SparseIntArray;

    move-result-object v5

    add-int/lit8 v12, v4, 0x1

    invoke-virtual {v5, v3, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 135
    sget-object v5, Lcom/android/CtsStateMonitor;->MEIZU_CTSINSTALL_PACKAGES_WHITELIST:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_77

    .line 136
    iget-object v5, p0, Lcom/android/CtsStateMonitor$1;->this$0:Lcom/android/CtsStateMonitor;

    invoke-static {v5}, Lcom/android/CtsStateMonitor;->access$400(Lcom/android/CtsStateMonitor;)V

    .line 137
    :cond_77
    const-string/jumbo v5, "true"

    invoke-static {v8, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v8, p0, Lcom/android/CtsStateMonitor$1;->this$0:Lcom/android/CtsStateMonitor;

    invoke-static {v8}, Lcom/android/CtsStateMonitor;->access$500(Lcom/android/CtsStateMonitor;)Z

    move-result v8

    if-nez v8, :cond_e3

    .line 139
    const-string/jumbo v8, "vendor.meizu.sys.cts_state"

    invoke-static {v8, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string/jumbo v8, "persist.sys.log_reject_level"

    const-string v12, "0"

    invoke-static {v8, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string/jumbo v8, "persist.sys.cts_Myanmar_state"

    invoke-static {v8, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "mz_cts_state"

    invoke-static {v5, v8, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 144
    iget-object v5, p0, Lcom/android/CtsStateMonitor$1;->this$0:Lcom/android/CtsStateMonitor;

    invoke-static {v5, v11}, Lcom/android/CtsStateMonitor;->access$502(Lcom/android/CtsStateMonitor;Z)Z

    .line 145
    iget-object v5, p0, Lcom/android/CtsStateMonitor$1;->this$0:Lcom/android/CtsStateMonitor;

    invoke-static {v5}, Lcom/android/CtsStateMonitor;->access$600(Lcom/android/CtsStateMonitor;)Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v8, "com.meizu.pps"

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v5

    const/4 v12, 0x2

    if-eq v12, v5, :cond_c5

    .line 146
    const-string v5, "disable package com.meizu.pps"

    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v5, p0, Lcom/android/CtsStateMonitor$1;->this$0:Lcom/android/CtsStateMonitor;

    invoke-static {v5}, Lcom/android/CtsStateMonitor;->access$600(Lcom/android/CtsStateMonitor;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v8, v12, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 158
    :cond_c5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "install_non_market_apps"

    invoke-static {v5, v8, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_e3

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v8, v11}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "unknown_sources_default_reversed"

    invoke-static {v2, v5, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 166
    :cond_e3
    iget-object v2, p0, Lcom/android/CtsStateMonitor$1;->this$0:Lcom/android/CtsStateMonitor;

    invoke-static {}, Lcom/android/CtsStateMonitor;->access$000()Landroid/util/SparseIntArray;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/CtsStateMonitor;->access$700(Lcom/android/CtsStateMonitor;Landroid/util/SparseIntArray;)V

    .line 168
    :cond_ec
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/CtsStateMonitor$1;->this$0:Lcom/android/CtsStateMonitor;

    invoke-static {v5}, Lcom/android/CtsStateMonitor;->access$500(Lcom/android/CtsStateMonitor;)Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " ,[up]sUidpackage.size = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/CtsStateMonitor;->access$000()Landroid/util/SparseIntArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19f

    .line 169
    :cond_124
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19f

    .line 170
    iget-object v2, p0, Lcom/android/CtsStateMonitor$1;->this$0:Lcom/android/CtsStateMonitor;

    invoke-static {v2, v1}, Lcom/android/CtsStateMonitor;->access$100(Lcom/android/CtsStateMonitor;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_169

    .line 171
    if-ne v4, v11, :cond_13e

    .line 172
    invoke-static {}, Lcom/android/CtsStateMonitor;->access$000()Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_149

    .line 173
    :cond_13e
    if-le v4, v11, :cond_149

    .line 174
    invoke-static {}, Lcom/android/CtsStateMonitor;->access$000()Landroid/util/SparseIntArray;

    move-result-object v2

    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v2, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 176
    :cond_149
    :goto_149
    iget-object v2, p0, Lcom/android/CtsStateMonitor$1;->this$0:Lcom/android/CtsStateMonitor;

    invoke-static {v2}, Lcom/android/CtsStateMonitor;->access$500(Lcom/android/CtsStateMonitor;)Z

    move-result v2

    if-eqz v2, :cond_160

    invoke-static {}, Lcom/android/CtsStateMonitor;->access$000()Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-nez v2, :cond_160

    .line 177
    const-string v2, "false"

    invoke-static {v8, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_160
    iget-object v2, p0, Lcom/android/CtsStateMonitor$1;->this$0:Lcom/android/CtsStateMonitor;

    invoke-static {}, Lcom/android/CtsStateMonitor;->access$000()Landroid/util/SparseIntArray;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/CtsStateMonitor;->access$700(Lcom/android/CtsStateMonitor;Landroid/util/SparseIntArray;)V

    .line 181
    :cond_169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/CtsStateMonitor$1;->this$0:Lcom/android/CtsStateMonitor;

    invoke-static {v5}, Lcom/android/CtsStateMonitor;->access$500(Lcom/android/CtsStateMonitor;)Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " ,[down]sUidpackage.size = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/CtsStateMonitor;->access$000()Landroid/util/SparseIntArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_19f
    :goto_19f
    return-void
.end method
