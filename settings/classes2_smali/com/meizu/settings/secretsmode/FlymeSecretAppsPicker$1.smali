.class Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker$1;
.super Ljava/lang/Object;
.source "FlymeSecretAppsPicker.java"

# interfaces
.implements Lcom/meizu/settings/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDeviceAdminPkgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker;


# direct methods
.method constructor <init>(Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker$1;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker$1;->mDeviceAdminPkgs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public filterApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 5

    .line 62
    iget-boolean v0, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 66
    :cond_6
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 67
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eq v0, v2, :cond_29

    .line 68
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, " skip userId = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FlymeSecretAppsPicker"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 73
    :cond_29
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_54

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_54

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v2, -0x80000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_3b

    goto :goto_54

    .line 78
    :cond_3b
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker$1;->mDeviceAdminPkgs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    return v1

    .line 84
    :cond_46
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker$1;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker;

    invoke-static {p0}, Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker;->access$000(Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker;)Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_54

    const/4 p0, 0x1

    return p0

    :cond_54
    :goto_54
    return v1
.end method

.method public filterApp(Lcom/meizu/settings/applications/ApplicationsState$AppEntry;)Z
    .registers 2

    .line 57
    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker$1;->filterApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method

.method public init()V
    .registers 5

    .line 42
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker$1;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker;->access$002(Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker;Landroid/content/pm/PackageManager;)Landroid/content/pm/PackageManager;

    .line 43
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker$1;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker;

    invoke-static {v0}, Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker;->access$000(Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker;)Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_61

    .line 45
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_61

    .line 46
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_46

    .line 47
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_46

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_46

    .line 49
    iget-object v2, p0, Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker$1;->mDeviceAdminPkgs:Ljava/util/List;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "find DeviceAdmin Pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FlymeSecretAppsPicker"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    :cond_61
    return-void
.end method
