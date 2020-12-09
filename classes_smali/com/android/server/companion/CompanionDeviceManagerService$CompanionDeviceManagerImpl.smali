.class Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;
.super Landroid/companion/ICompanionDeviceManager$Stub;
.source "CompanionDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/companion/CompanionDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CompanionDeviceManagerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/companion/CompanionDeviceManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V
    .registers 2

    .line 219
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-direct {p0}, Landroid/companion/ICompanionDeviceManager$Stub;-><init>()V

    return-void
.end method

.method private checkCallerIsSystemOr(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 290
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$300()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->checkCallerIsSystemOr(Ljava/lang/String;I)V

    .line 291
    return-void
.end method

.method private checkCallerIsSystemOr(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 294
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 295
    return-void

    .line 298
    :cond_7
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$300()I

    move-result v0

    if-ne v0, p2, :cond_f

    const/4 p2, 0x1

    goto :goto_10

    :cond_f
    const/4 p2, 0x0

    :goto_10
    const-string v0, "Must be called by either same user or system"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 300
    iget-object p2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$1100(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/internal/app/IAppOpsService;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-interface {p2, v0, p1}, Lcom/android/internal/app/IAppOpsService;->checkPackage(ILjava/lang/String;)I

    .line 301
    return-void
.end method

.method private checkCanCallNotificationApi(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 341
    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->checkCallerIsSystemOr(Ljava/lang/String;)V

    .line 342
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$300()I

    move-result v0

    .line 343
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v1, v0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$100(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "App must have an association before calling this API"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 345
    invoke-direct {p0, p1, v0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->checkUsesFeature(Ljava/lang/String;I)V

    .line 346
    return-void
.end method

.method private checkUsesFeature(Ljava/lang/String;I)V
    .registers 6

    .line 349
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 351
    return-void

    .line 354
    :cond_7
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$1200(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    .line 355
    const-string p2, "android.software.companion_device_setup"

    .line 356
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v0

    .line 357
    const/4 v1, 0x0

    :goto_16
    if-ge v1, v0, :cond_26

    .line 358
    aget-object v2, p1, v1

    iget-object v2, v2, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    return-void

    .line 357
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 360
    :cond_26
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Must declare uses-feature "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " in manifest to use this API"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic lambda$getAssociations$0(Lcom/android/server/companion/CompanionDeviceManagerService$Association;)Ljava/lang/String;
    .registers 1

    .line 276
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$Association;->deviceAddress:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public associate(Landroid/companion/AssociationRequest;Landroid/companion/IFindDeviceCallback;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 241
    const-string v0, "Request cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v0, "Callback cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-direct {p0, p3}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->checkCallerIsSystemOr(Ljava/lang/String;)V

    .line 244
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$300()I

    move-result v0

    .line 245
    invoke-direct {p0, p3, v0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->checkUsesFeature(Ljava/lang/String;I)V

    .line 246
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 248
    :try_start_18
    iget-object v3, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v3}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 249
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$400()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 250
    invoke-static {v5, p1, p2, p3}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$500(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/AssociationRequest;Landroid/companion/IFindDeviceCallback;Ljava/lang/String;)Landroid/content/ServiceConnection;

    move-result-object p1

    const/4 p2, 0x1

    .line 252
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p3

    .line 248
    invoke-virtual {v3, v4, p1, p2, p3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_39
    .catchall {:try_start_18 .. :try_end_39} :catchall_3e

    .line 254
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 255
    nop

    .line 256
    return-void

    .line 254
    :catchall_3e
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public disassociate(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 283
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    invoke-direct {p0, p2}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->checkCallerIsSystemOr(Ljava/lang/String;)V

    .line 285
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$300()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->checkUsesFeature(Ljava/lang/String;I)V

    .line 286
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$300()I

    move-result v1

    invoke-virtual {v0, v1, p2, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->removeAssociation(ILjava/lang/String;Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method public getAssociations(Ljava/lang/String;I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 272
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->checkCallerIsSystemOr(Ljava/lang/String;I)V

    .line 273
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$300()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->checkUsesFeature(Ljava/lang/String;I)V

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 275
    invoke-static {v1, p2, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$100(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)Ljava/util/Set;

    move-result-object p1

    sget-object p2, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$CompanionDeviceManagerImpl$bdv3Vfadbb8b9nrSgkARO4oYOXU;->INSTANCE:Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$CompanionDeviceManagerImpl$bdv3Vfadbb8b9nrSgkARO4oYOXU;

    .line 274
    invoke-static {p1, p2}, Lcom/android/internal/util/CollectionUtils;->map(Ljava/util/Set;Ljava/util/function/Function;)Ljava/util/Set;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public hasNotificationAccess(Landroid/content/ComponentName;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 334
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->checkCanCallNotificationApi(Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_notification_listeners"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    new-instance v1, Landroid/provider/SettingsStringUtil$ComponentNameSet;

    invoke-direct {v1, v0}, Landroid/provider/SettingsStringUtil$ComponentNameSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/provider/SettingsStringUtil$ComponentNameSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 369
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;

    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 370
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/companion/ICompanionDeviceManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return p1

    .line 226
    :catchall_5
    move-exception p1

    .line 227
    const-string p2, "CompanionDeviceManagerService"

    const-string p3, "Error during IPC"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    const-class p2, Landroid/os/RemoteException;

    invoke-static {p1, p2}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public requestNotificationAccess(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 306
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-direct {p0, v0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->checkCanCallNotificationApi(Ljava/lang/String;)V

    .line 308
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$300()I

    move-result v1

    .line 309
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 310
    invoke-static {v3, v0, v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$1200(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 312
    invoke-virtual {v3}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x43fa0000  # 500.0f

    const/4 v5, 0x5

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object v0

    .line 316
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 309
    invoke-virtual {v2, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 319
    :try_start_34
    iget-object v4, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v4}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    .line 321
    invoke-static {v1, p1, v0}, Lcom/android/internal/notification/NotificationAccessConfirmationActivityContract;->launcherIntent(ILandroid/content/ComponentName;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const/high16 v8, 0x54000000

    const/4 v9, 0x0

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 319
    invoke-static/range {v5 .. v10}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p1
    :try_end_4b
    .catchall {:try_start_34 .. :try_end_4b} :catchall_4f

    .line 328
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 319
    return-object p1

    .line 328
    :catchall_4f
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public stopScan(Landroid/companion/AssociationRequest;Landroid/companion/IFindDeviceCallback;Ljava/lang/String;)V
    .registers 5

    .line 262
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$600(Lcom/android/server/companion/CompanionDeviceManagerService;)Landroid/companion/AssociationRequest;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    iget-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 263
    invoke-static {p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$700(Lcom/android/server/companion/CompanionDeviceManagerService;)Landroid/companion/IFindDeviceCallback;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    iget-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 264
    invoke-static {p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$800(Lcom/android/server/companion/CompanionDeviceManagerService;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 265
    iget-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$900(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    .line 267
    :cond_29
    return-void
.end method
