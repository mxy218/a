.class Lcom/android/server/accounts/AccountManagerService$4;
.super Landroid/app/AppOpsManager$OnOpChangedInternalListener;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;-><init>(Lcom/android/server/accounts/AccountManagerService$Injector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;)V
    .registers 2

    .line 351
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$4;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-direct {p0}, Landroid/app/AppOpsManager$OnOpChangedInternalListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpChanged(ILjava/lang/String;)V
    .registers 7

    .line 355
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    .line 356
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$4;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->access$500(Lcom/android/server/accounts/AccountManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p1

    .line 357
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$4;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->access$600(Lcom/android/server/accounts/AccountManagerService;)Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 359
    if-nez v0, :cond_2f

    .line 360
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_20} :catch_30

    .line 362
    :try_start_20
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$4;->this$0:Lcom/android/server/accounts/AccountManagerService;

    const/4 v3, 0x1

    invoke-static {v2, p2, p1, v3}, Lcom/android/server/accounts/AccountManagerService;->access$700(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;IZ)V
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_2a

    .line 364
    :try_start_26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 365
    goto :goto_2f

    .line 364
    :catchall_2a
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
    :try_end_2f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_26 .. :try_end_2f} :catch_30

    .line 369
    :cond_2f
    :goto_2f
    goto :goto_31

    .line 367
    :catch_30
    move-exception p1

    .line 370
    :goto_31
    return-void
.end method
