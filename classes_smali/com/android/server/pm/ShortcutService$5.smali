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
    .param p1, "this$0"  # Lcom/android/server/pm/ShortcutService;

    .line 2926
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 2929
    const/16 v0, -0x2710

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2930
    .local v1, "userId":I
    if-ne v1, v0, :cond_21

    .line 2931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent broadcast does not contain user handle: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ShortcutService"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2932
    return-void

    .line 2935
    :cond_21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2939
    .local v0, "action":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v2

    .line 2941
    .local v2, "token":J
    :try_start_2b
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v4}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_32} :catch_ef
    .catchall {:try_start_2b .. :try_end_32} :catchall_ed

    .line 2942
    :try_start_32
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v5, v1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v5

    if-nez v5, :cond_41

    .line 2947
    monitor-exit v4
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_ea

    .line 2994
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 2947
    return-void

    .line 2952
    :cond_41
    :try_start_41
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v5, v1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v5

    .line 2953
    .local v5, "user":Lcom/android/server/pm/ShortcutUser;
    invoke-virtual {v5}, Lcom/android/server/pm/ShortcutUser;->clearLauncher()V

    .line 2954
    .end local v5  # "user":Lcom/android/server/pm/ShortcutUser;
    monitor-exit v4
    :try_end_4b
    .catchall {:try_start_41 .. :try_end_4b} :catchall_ea

    .line 2955
    :try_start_4b
    const-string v4, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_51} :catch_ef
    .catchall {:try_start_4b .. :try_end_51} :catchall_ed

    if-eqz v4, :cond_59

    .line 2994
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 2957
    return-void

    .line 2960
    :cond_59
    :try_start_59
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 2961
    .local v4, "intentUri":Landroid/net/Uri;
    if-eqz v4, :cond_64

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    goto :goto_65

    .line 2962
    :cond_64
    const/4 v5, 0x0

    :goto_65
    nop

    .line 2963
    .local v5, "packageName":Ljava/lang/String;
    if-nez v5, :cond_84

    .line 2964
    const-string v6, "ShortcutService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Intent broadcast does not contain package name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_7e} :catch_ef
    .catchall {:try_start_59 .. :try_end_7e} :catchall_ed

    .line 2994
    iget-object v6, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v6, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 2965
    return-void

    .line 2968
    :cond_84
    :try_start_84
    const-string v6, "android.intent.extra.REPLACING"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 2970
    .local v6, "replacing":Z
    const/4 v8, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    sparse-switch v9, :sswitch_data_104

    :cond_96
    goto :goto_be

    :sswitch_97
    const-string v9, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_96

    goto :goto_bf

    :sswitch_a0
    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_96

    move v7, v12

    goto :goto_bf

    :sswitch_aa
    const-string v7, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_96

    move v7, v10

    goto :goto_bf

    :sswitch_b4
    const-string v7, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_96

    move v7, v11

    goto :goto_bf

    :goto_be
    move v7, v8

    :goto_bf
    if-eqz v7, :cond_dc

    if-eq v7, v12, :cond_d4

    if-eq v7, v11, :cond_ce

    if-eq v7, v10, :cond_c8

    goto :goto_f7

    .line 2988
    :cond_c8
    iget-object v7, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v7, v5, v1}, Lcom/android/server/pm/ShortcutService;->access$1200(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    goto :goto_f7

    .line 2984
    :cond_ce
    iget-object v7, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v7, v5, v1}, Lcom/android/server/pm/ShortcutService;->access$1100(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    .line 2986
    goto :goto_f7

    .line 2979
    :cond_d4
    if-nez v6, :cond_f7

    .line 2980
    iget-object v7, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v7, v5, v1}, Lcom/android/server/pm/ShortcutService;->access$1000(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    goto :goto_f7

    .line 2972
    :cond_dc
    if-eqz v6, :cond_e4

    .line 2973
    iget-object v7, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v7, v5, v1}, Lcom/android/server/pm/ShortcutService;->access$800(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    goto :goto_f7

    .line 2975
    :cond_e4
    iget-object v7, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v7, v5, v1}, Lcom/android/server/pm/ShortcutService;->access$900(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_e9} :catch_ef
    .catchall {:try_start_84 .. :try_end_e9} :catchall_ed

    .line 2977
    goto :goto_f7

    .line 2954
    .end local v4  # "intentUri":Landroid/net/Uri;
    .end local v5  # "packageName":Ljava/lang/String;
    .end local v6  # "replacing":Z
    :catchall_ea
    move-exception v5

    :try_start_eb
    monitor-exit v4
    :try_end_ec
    .catchall {:try_start_eb .. :try_end_ec} :catchall_ea

    .end local v0  # "action":Ljava/lang/String;
    .end local v1  # "userId":I
    .end local v2  # "token":J
    .end local p0  # "this":Lcom/android/server/pm/ShortcutService$5;
    .end local p1  # "context":Landroid/content/Context;
    .end local p2  # "intent":Landroid/content/Intent;
    :try_start_ec
    throw v5
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_ed} :catch_ef
    .catchall {:try_start_ec .. :try_end_ed} :catchall_ed

    .line 2994
    .restart local v0  # "action":Ljava/lang/String;
    .restart local v1  # "userId":I
    .restart local v2  # "token":J
    .restart local p0  # "this":Lcom/android/server/pm/ShortcutService$5;
    .restart local p1  # "context":Landroid/content/Context;
    .restart local p2  # "intent":Landroid/content/Intent;
    :catchall_ed
    move-exception v4

    goto :goto_fe

    .line 2991
    :catch_ef
    move-exception v4

    .line 2992
    .local v4, "e":Ljava/lang/Exception;
    :try_start_f0
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    const-string v6, "Exception in mPackageMonitor.onReceive"

    invoke-virtual {v5, v6, v4}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_f7
    .catchall {:try_start_f0 .. :try_end_f7} :catchall_ed

    .line 2994
    .end local v4  # "e":Ljava/lang/Exception;
    :cond_f7
    :goto_f7
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 2995
    nop

    .line 2996
    return-void

    .line 2994
    :goto_fe
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v5, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    throw v4

    :sswitch_data_104
    .sparse-switch
        0xa480416 -> :sswitch_b4
        0xff13fb5 -> :sswitch_aa
        0x1f50b9c2 -> :sswitch_a0
        0x5c1076e2 -> :sswitch_97
    .end sparse-switch
.end method
