.class Lcom/android/server/pm/ShortcutService$5;
.super Landroid/content/BroadcastReceiver;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .registers 2

    .line 2915
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13

    .line 2918
    const/16 p1, -0x2710

    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2919
    if-ne v0, p1, :cond_21

    .line 2920
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Intent broadcast does not contain user handle: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ShortcutService"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2921
    return-void

    .line 2924
    :cond_21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2928
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v1

    .line 2930
    :try_start_2b
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v3}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_32} :catch_ed
    .catchall {:try_start_2b .. :try_end_32} :catchall_eb

    .line 2931
    :try_start_32
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v4, v0}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v4

    if-nez v4, :cond_41

    .line 2936
    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_e8

    .line 2983
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p1, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 2936
    return-void

    .line 2941
    :cond_41
    :try_start_41
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v4, v0}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v4

    .line 2942
    invoke-virtual {v4}, Lcom/android/server/pm/ShortcutUser;->clearLauncher()V

    .line 2943
    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_41 .. :try_end_4b} :catchall_e8

    .line 2944
    :try_start_4b
    const-string v3, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_51} :catch_ed
    .catchall {:try_start_4b .. :try_end_51} :catchall_eb

    if-eqz v3, :cond_59

    .line 2983
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p1, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 2946
    return-void

    .line 2949
    :cond_59
    :try_start_59
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 2950
    if-eqz v3, :cond_64

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    goto :goto_65

    .line 2951
    :cond_64
    const/4 v3, 0x0

    .line 2952
    :goto_65
    if-nez v3, :cond_83

    .line 2953
    const-string p1, "ShortcutService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent broadcast does not contain package name: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_7d} :catch_ed
    .catchall {:try_start_59 .. :try_end_7d} :catchall_eb

    .line 2983
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p1, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 2954
    return-void

    .line 2957
    :cond_83
    :try_start_83
    const-string v4, "android.intent.extra.REPLACING"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 2959
    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    sparse-switch v6, :sswitch_data_102

    :cond_95
    goto :goto_bd

    :sswitch_96
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_95

    move v4, v5

    goto :goto_bd

    :sswitch_a0
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_95

    move v4, v9

    goto :goto_bd

    :sswitch_aa
    const-string v5, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_95

    move v4, v7

    goto :goto_bd

    :sswitch_b4
    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_95

    move v4, v8

    :goto_bd
    if-eqz v4, :cond_da

    if-eq v4, v9, :cond_d2

    if-eq v4, v8, :cond_cc

    if-eq v4, v7, :cond_c6

    goto :goto_f5

    .line 2977
    :cond_c6
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {p1, v3, v0}, Lcom/android/server/pm/ShortcutService;->access$1200(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    goto :goto_f5

    .line 2973
    :cond_cc
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {p1, v3, v0}, Lcom/android/server/pm/ShortcutService;->access$1100(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    .line 2975
    goto :goto_f5

    .line 2968
    :cond_d2
    if-nez p2, :cond_f5

    .line 2969
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {p1, v3, v0}, Lcom/android/server/pm/ShortcutService;->access$1000(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    goto :goto_f5

    .line 2961
    :cond_da
    if-eqz p2, :cond_e2

    .line 2962
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {p1, v3, v0}, Lcom/android/server/pm/ShortcutService;->access$800(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    goto :goto_f5

    .line 2964
    :cond_e2
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {p1, v3, v0}, Lcom/android/server/pm/ShortcutService;->access$900(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_e7} :catch_ed
    .catchall {:try_start_83 .. :try_end_e7} :catchall_eb

    .line 2966
    goto :goto_f5

    .line 2943
    :catchall_e8
    move-exception p1

    :try_start_e9
    monitor-exit v3
    :try_end_ea
    .catchall {:try_start_e9 .. :try_end_ea} :catchall_e8

    :try_start_ea
    throw p1
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_eb} :catch_ed
    .catchall {:try_start_ea .. :try_end_eb} :catchall_eb

    .line 2983
    :catchall_eb
    move-exception p1

    goto :goto_fc

    .line 2980
    :catch_ed
    move-exception p1

    .line 2981
    :try_start_ee
    iget-object p2, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    const-string v0, "Exception in mPackageMonitor.onReceive"

    invoke-virtual {p2, v0, p1}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_f5
    .catchall {:try_start_ee .. :try_end_f5} :catchall_eb

    .line 2983
    :cond_f5
    :goto_f5
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p1, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 2984
    nop

    .line 2985
    return-void

    .line 2983
    :goto_fc
    iget-object p2, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p2, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    throw p1

    :sswitch_data_102
    .sparse-switch
        0xa480416 -> :sswitch_b4
        0xff13fb5 -> :sswitch_aa
        0x1f50b9c2 -> :sswitch_a0
        0x5c1076e2 -> :sswitch_96
    .end sparse-switch
.end method
