.class Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "LauncherAppsService.java"

# interfaces
.implements Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V
    .registers 2

    .line 918
    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Lcom/android/server/pm/LauncherAppsService$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
    .param p2, "x1"  # Lcom/android/server/pm/LauncherAppsService$1;

    .line 918
    invoke-direct {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V

    return-void
.end method

.method private onShortcutChangedInner(Ljava/lang/String;I)V
    .registers 24
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 1084
    move-object/from16 v1, p0

    const-string v2, "LauncherAppsService"

    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v3

    .line 1086
    .local v3, "n":I
    :try_start_e
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    move-object v4, v0

    .line 1088
    .local v4, "user":Landroid/os/UserHandle;
    const/4 v0, 0x0

    move v5, v0

    .local v5, "i":I
    :goto_15
    if-ge v5, v3, :cond_9b

    .line 1089
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/content/pm/IOnAppsChangedListener;

    move-object v6, v0

    .line 1090
    .local v6, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    move-object v7, v0

    .line 1091
    .local v7, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v8, v7, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v9, "onShortcutChanged"

    invoke-static {v0, v8, v4, v9}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    move-object/from16 v9, p1

    goto :goto_97

    .line 1093
    :cond_41
    iget-object v0, v7, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    move v15, v0

    .line 1096
    .local v15, "launcherUserId":I
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$300(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/content/pm/ShortcutServiceInternal;

    move-result-object v0

    iget-object v8, v7, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->packageName:Ljava/lang/String;

    iget v9, v7, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingPid:I

    iget v10, v7, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingUid:I

    invoke-virtual {v0, v15, v8, v9, v10}, Landroid/content/pm/ShortcutServiceInternal;->hasShortcutHostPermission(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 1099
    move-object/from16 v9, p1

    goto :goto_97

    .line 1105
    :cond_5d
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 1106
    invoke-static {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$300(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/content/pm/ShortcutServiceInternal;

    move-result-object v8

    iget-object v10, v7, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->packageName:Ljava/lang/String;

    const-wide/16 v11, 0x0

    const/4 v14, 0x0

    const/4 v0, 0x0

    const/16 v16, 0x40f

    iget v13, v7, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingPid:I

    iget v9, v7, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingUid:I

    move/from16 v19, v9

    move v9, v15

    move/from16 v18, v13

    move-object/from16 v13, p1

    move/from16 v20, v15

    .end local v15  # "launcherUserId":I
    .local v20, "launcherUserId":I
    move-object v15, v0

    move/from16 v17, p2

    invoke-virtual/range {v8 .. v19}, Landroid/content/pm/ShortcutServiceInternal;->getShortcuts(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Landroid/content/ComponentName;IIII)Ljava/util/List;

    move-result-object v0
    :try_end_7f
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_7f} :catch_ac
    .catchall {:try_start_e .. :try_end_7f} :catchall_a8

    move-object v8, v0

    .line 1114
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :try_start_80
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v8}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_80 .. :try_end_85} :catch_8f
    .catch Ljava/lang/RuntimeException; {:try_start_80 .. :try_end_85} :catch_ac
    .catchall {:try_start_80 .. :try_end_85} :catchall_a8

    move-object/from16 v9, p1

    :try_start_87
    invoke-interface {v6, v4, v9, v0}, Landroid/content/pm/IOnAppsChangedListener;->onShortcutChanged(Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_87 .. :try_end_8a} :catch_8d
    .catch Ljava/lang/RuntimeException; {:try_start_87 .. :try_end_8a} :catch_8b
    .catchall {:try_start_87 .. :try_end_8a} :catchall_b9

    .line 1118
    goto :goto_97

    .line 1120
    .end local v4  # "user":Landroid/os/UserHandle;
    .end local v5  # "i":I
    .end local v6  # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v7  # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v8  # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .end local v20  # "launcherUserId":I
    :catch_8b
    move-exception v0

    goto :goto_af

    .line 1116
    .restart local v4  # "user":Landroid/os/UserHandle;
    .restart local v5  # "i":I
    .restart local v6  # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .restart local v7  # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .restart local v8  # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v20  # "launcherUserId":I
    :catch_8d
    move-exception v0

    goto :goto_92

    :catch_8f
    move-exception v0

    move-object/from16 v9, p1

    .line 1117
    .local v0, "re":Landroid/os/RemoteException;
    :goto_92
    :try_start_92
    const-string v10, "Callback failed "

    invoke-static {v2, v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_97
    .catch Ljava/lang/RuntimeException; {:try_start_92 .. :try_end_97} :catch_8b
    .catchall {:try_start_92 .. :try_end_97} :catchall_b9

    .line 1088
    .end local v0  # "re":Landroid/os/RemoteException;
    .end local v6  # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v7  # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v8  # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .end local v20  # "launcherUserId":I
    :goto_97
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_15

    :cond_9b
    move-object/from16 v9, p1

    .line 1124
    .end local v4  # "user":Landroid/os/UserHandle;
    .end local v5  # "i":I
    nop

    :goto_9e
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 1125
    goto :goto_b8

    .line 1124
    :catchall_a8
    move-exception v0

    move-object/from16 v9, p1

    goto :goto_ba

    .line 1120
    :catch_ac
    move-exception v0

    move-object/from16 v9, p1

    .line 1122
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_af
    :try_start_af
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b6
    .catchall {:try_start_af .. :try_end_b6} :catchall_b9

    .line 1124
    nop

    .end local v0  # "e":Ljava/lang/RuntimeException;
    goto :goto_9e

    .line 1126
    :goto_b8
    return-void

    .line 1124
    :catchall_b9
    move-exception v0

    :goto_ba
    iget-object v2, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    throw v0
.end method


# virtual methods
.method public synthetic lambda$onShortcutChanged$0$LauncherAppsService$LauncherAppsImpl$MyPackageMonitor(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 1079
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->onShortcutChangedInner(Ljava/lang/String;I)V

    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 11
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 924
    new-instance v0, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 925
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v1

    .line 927
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v1, :cond_56

    .line 928
    :try_start_16
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/pm/IOnAppsChangedListener;

    .line 929
    .local v3, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 930
    .local v4, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v6, v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v7, "onPackageAdded"

    invoke-static {v5, v6, v0, v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v5
    :try_end_39
    .catchall {:try_start_16 .. :try_end_39} :catchall_4b

    if-nez v5, :cond_3c

    goto :goto_48

    .line 932
    :cond_3c
    :try_start_3c
    invoke-interface {v3, v0, p1}, Landroid/content/pm/IOnAppsChangedListener;->onPackageAdded(Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_3f} :catch_40
    .catchall {:try_start_3c .. :try_end_3f} :catchall_4b

    .line 935
    goto :goto_48

    .line 933
    :catch_40
    move-exception v5

    .line 934
    .local v5, "re":Landroid/os/RemoteException;
    :try_start_41
    const-string v6, "LauncherAppsService"

    const-string v7, "Callback failed "

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_4b

    .line 927
    .end local v3  # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4  # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v5  # "re":Landroid/os/RemoteException;
    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 938
    .end local v2  # "i":I
    :catchall_4b
    move-exception v2

    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    throw v2

    :cond_56
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 939
    nop

    .line 941
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageAdded(Ljava/lang/String;I)V

    .line 942
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .registers 10
    .param p1, "packageName"  # Ljava/lang/String;

    .line 968
    new-instance v0, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 969
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v1

    .line 971
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v1, :cond_56

    .line 972
    :try_start_16
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/pm/IOnAppsChangedListener;

    .line 973
    .local v3, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 974
    .local v4, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v6, v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v7, "onPackageModified"

    invoke-static {v5, v6, v0, v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v5
    :try_end_39
    .catchall {:try_start_16 .. :try_end_39} :catchall_4b

    if-nez v5, :cond_3c

    goto :goto_48

    .line 976
    :cond_3c
    :try_start_3c
    invoke-interface {v3, v0, p1}, Landroid/content/pm/IOnAppsChangedListener;->onPackageChanged(Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_3f} :catch_40
    .catchall {:try_start_3c .. :try_end_3f} :catchall_4b

    .line 979
    goto :goto_48

    .line 977
    :catch_40
    move-exception v5

    .line 978
    .local v5, "re":Landroid/os/RemoteException;
    :try_start_41
    const-string v6, "LauncherAppsService"

    const-string v7, "Callback failed "

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_4b

    .line 971
    .end local v3  # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4  # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v5  # "re":Landroid/os/RemoteException;
    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 982
    .end local v2  # "i":I
    :catchall_4b
    move-exception v2

    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    throw v2

    :cond_56
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 983
    nop

    .line 985
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    .line 986
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 11
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 946
    new-instance v0, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 947
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v1

    .line 949
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v1, :cond_56

    .line 950
    :try_start_16
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/pm/IOnAppsChangedListener;

    .line 951
    .local v3, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 952
    .local v4, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v6, v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v7, "onPackageRemoved"

    invoke-static {v5, v6, v0, v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v5
    :try_end_39
    .catchall {:try_start_16 .. :try_end_39} :catchall_4b

    if-nez v5, :cond_3c

    goto :goto_48

    .line 954
    :cond_3c
    :try_start_3c
    invoke-interface {v3, v0, p1}, Landroid/content/pm/IOnAppsChangedListener;->onPackageRemoved(Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_3f} :catch_40
    .catchall {:try_start_3c .. :try_end_3f} :catchall_4b

    .line 957
    goto :goto_48

    .line 955
    :catch_40
    move-exception v5

    .line 956
    .local v5, "re":Landroid/os/RemoteException;
    :try_start_41
    const-string v6, "LauncherAppsService"

    const-string v7, "Callback failed "

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_4b

    .line 949
    .end local v3  # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4  # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v5  # "re":Landroid/os/RemoteException;
    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 960
    .end local v2  # "i":I
    :catchall_4b
    move-exception v2

    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    throw v2

    :cond_56
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 961
    nop

    .line 963
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageRemoved(Ljava/lang/String;I)V

    .line 964
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .registers 10
    .param p1, "packages"  # [Ljava/lang/String;

    .line 990
    new-instance v0, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 991
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v1

    .line 993
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v1, :cond_5a

    .line 994
    :try_start_16
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/pm/IOnAppsChangedListener;

    .line 995
    .local v3, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 996
    .local v4, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v6, v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v7, "onPackagesAvailable"

    invoke-static {v5, v6, v0, v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v5
    :try_end_39
    .catchall {:try_start_16 .. :try_end_39} :catchall_4f

    if-nez v5, :cond_3c

    goto :goto_4c

    .line 998
    :cond_3c
    :try_start_3c
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->isReplacing()Z

    move-result v5

    invoke-interface {v3, v0, p1, v5}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesAvailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_43} :catch_44
    .catchall {:try_start_3c .. :try_end_43} :catchall_4f

    .line 1001
    goto :goto_4c

    .line 999
    :catch_44
    move-exception v5

    .line 1000
    .local v5, "re":Landroid/os/RemoteException;
    :try_start_45
    const-string v6, "LauncherAppsService"

    const-string v7, "Callback failed "

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_4f

    .line 993
    .end local v3  # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4  # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v5  # "re":Landroid/os/RemoteException;
    :goto_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1004
    .end local v2  # "i":I
    :catchall_4f
    move-exception v2

    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    throw v2

    :cond_5a
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 1005
    nop

    .line 1007
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesAvailable([Ljava/lang/String;)V

    .line 1008
    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "packages"  # [Ljava/lang/String;
    .param p2, "launcherExtras"  # Landroid/os/Bundle;

    .line 1034
    new-instance v0, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 1035
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v1

    .line 1037
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v1, :cond_56

    .line 1038
    :try_start_16
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/pm/IOnAppsChangedListener;

    .line 1039
    .local v3, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 1040
    .local v4, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v6, v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v7, "onPackagesSuspended"

    invoke-static {v5, v6, v0, v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v5
    :try_end_39
    .catchall {:try_start_16 .. :try_end_39} :catchall_4b

    if-nez v5, :cond_3c

    goto :goto_48

    .line 1042
    :cond_3c
    :try_start_3c
    invoke-interface {v3, v0, p1, p2}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesSuspended(Landroid/os/UserHandle;[Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_3f} :catch_40
    .catchall {:try_start_3c .. :try_end_3f} :catchall_4b

    .line 1045
    goto :goto_48

    .line 1043
    :catch_40
    move-exception v5

    .line 1044
    .local v5, "re":Landroid/os/RemoteException;
    :try_start_41
    const-string v6, "LauncherAppsService"

    const-string v7, "Callback failed "

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_4b

    .line 1037
    .end local v3  # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4  # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v5  # "re":Landroid/os/RemoteException;
    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1048
    .end local v2  # "i":I
    :catchall_4b
    move-exception v2

    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    throw v2

    :cond_56
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 1049
    nop

    .line 1051
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackagesSuspended([Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1052
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .registers 10
    .param p1, "packages"  # [Ljava/lang/String;

    .line 1012
    new-instance v0, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 1013
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v1

    .line 1015
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v1, :cond_5a

    .line 1016
    :try_start_16
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/pm/IOnAppsChangedListener;

    .line 1017
    .local v3, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 1018
    .local v4, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v6, v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v7, "onPackagesUnavailable"

    invoke-static {v5, v6, v0, v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v5
    :try_end_39
    .catchall {:try_start_16 .. :try_end_39} :catchall_4f

    if-nez v5, :cond_3c

    goto :goto_4c

    .line 1020
    :cond_3c
    :try_start_3c
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->isReplacing()Z

    move-result v5

    invoke-interface {v3, v0, p1, v5}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesUnavailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_43} :catch_44
    .catchall {:try_start_3c .. :try_end_43} :catchall_4f

    .line 1023
    goto :goto_4c

    .line 1021
    :catch_44
    move-exception v5

    .line 1022
    .local v5, "re":Landroid/os/RemoteException;
    :try_start_45
    const-string v6, "LauncherAppsService"

    const-string v7, "Callback failed "

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_4f

    .line 1015
    .end local v3  # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4  # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v5  # "re":Landroid/os/RemoteException;
    :goto_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1026
    .end local v2  # "i":I
    :catchall_4f
    move-exception v2

    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    throw v2

    :cond_5a
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 1027
    nop

    .line 1029
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesUnavailable([Ljava/lang/String;)V

    .line 1030
    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;)V
    .registers 10
    .param p1, "packages"  # [Ljava/lang/String;

    .line 1056
    new-instance v0, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 1057
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v1

    .line 1059
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v1, :cond_56

    .line 1060
    :try_start_16
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/pm/IOnAppsChangedListener;

    .line 1061
    .local v3, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 1062
    .local v4, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v6, v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v7, "onPackagesUnsuspended"

    invoke-static {v5, v6, v0, v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v5
    :try_end_39
    .catchall {:try_start_16 .. :try_end_39} :catchall_4b

    if-nez v5, :cond_3c

    goto :goto_48

    .line 1064
    :cond_3c
    :try_start_3c
    invoke-interface {v3, v0, p1}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesUnsuspended(Landroid/os/UserHandle;[Ljava/lang/String;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_3f} :catch_40
    .catchall {:try_start_3c .. :try_end_3f} :catchall_4b

    .line 1067
    goto :goto_48

    .line 1065
    :catch_40
    move-exception v5

    .line 1066
    .local v5, "re":Landroid/os/RemoteException;
    :try_start_41
    const-string v6, "LauncherAppsService"

    const-string v7, "Callback failed "

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_4b

    .line 1059
    .end local v3  # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4  # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v5  # "re":Landroid/os/RemoteException;
    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1070
    .end local v2  # "i":I
    :catchall_4b
    move-exception v2

    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    throw v2

    :cond_56
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 1071
    nop

    .line 1073
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesUnsuspended([Ljava/lang/String;)V

    .line 1074
    return-void
.end method

.method public onShortcutChanged(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 1079
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    new-instance v1, Lcom/android/server/pm/-$$Lambda$LauncherAppsService$LauncherAppsImpl$MyPackageMonitor$eTair5Mvr14v4M0nq9aQEW2cp-Y;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/-$$Lambda$LauncherAppsService$LauncherAppsImpl$MyPackageMonitor$eTair5Mvr14v4M0nq9aQEW2cp-Y;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->postToPackageMonitorHandler(Ljava/lang/Runnable;)V

    .line 1080
    return-void
.end method
