.class Lcom/android/server/connectivity/PermissionMonitor$PackageListObserver;
.super Ljava/lang/Object;
.source "PermissionMonitor.java"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$PackageListObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/PermissionMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageListObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/PermissionMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/PermissionMonitor;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/android/server/connectivity/PermissionMonitor$PackageListObserver;->this$0:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/PermissionMonitor;Lcom/android/server/connectivity/PermissionMonitor$1;)V
    .registers 3

    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/PermissionMonitor$PackageListObserver;-><init>(Lcom/android/server/connectivity/PermissionMonitor;)V

    return-void
.end method

.method private getPermissionForUid(I)I
    .registers 7

    .line 108
    nop

    .line 111
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor$PackageListObserver;->this$0:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/PermissionMonitor;->access$000(Lcom/android/server/connectivity/PermissionMonitor;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    .line 112
    if-eqz p1, :cond_2f

    array-length v0, p1

    if-lez v0, :cond_2f

    .line 113
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_13
    if-ge v1, v0, :cond_30

    aget-object v3, p1, v1

    .line 114
    iget-object v4, p0, Lcom/android/server/connectivity/PermissionMonitor$PackageListObserver;->this$0:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-static {v4, v3}, Lcom/android/server/connectivity/PermissionMonitor;->access$100(Lcom/android/server/connectivity/PermissionMonitor;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 115
    if-eqz v3, :cond_2c

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v4, :cond_2c

    .line 116
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    invoke-static {v4, v3}, Lcom/android/server/connectivity/PermissionMonitor;->access$200([Ljava/lang/String;[I)I

    move-result v3

    or-int/2addr v2, v3

    .line 113
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 122
    :cond_2f
    const/4 v2, -0x1

    .line 124
    :cond_30
    return v2
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 4

    .line 129
    iget-object p1, p0, Lcom/android/server/connectivity/PermissionMonitor$PackageListObserver;->this$0:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-direct {p0, p2}, Lcom/android/server/connectivity/PermissionMonitor$PackageListObserver;->getPermissionForUid(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/android/server/connectivity/PermissionMonitor;->sendPackagePermissionsForUid(II)V

    .line 130
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;I)V
    .registers 4

    .line 134
    iget-object p1, p0, Lcom/android/server/connectivity/PermissionMonitor$PackageListObserver;->this$0:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-direct {p0, p2}, Lcom/android/server/connectivity/PermissionMonitor$PackageListObserver;->getPermissionForUid(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/android/server/connectivity/PermissionMonitor;->sendPackagePermissionsForUid(II)V

    .line 135
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 4

    .line 139
    iget-object p1, p0, Lcom/android/server/connectivity/PermissionMonitor$PackageListObserver;->this$0:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-direct {p0, p2}, Lcom/android/server/connectivity/PermissionMonitor$PackageListObserver;->getPermissionForUid(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/android/server/connectivity/PermissionMonitor;->sendPackagePermissionsForUid(II)V

    .line 140
    return-void
.end method
