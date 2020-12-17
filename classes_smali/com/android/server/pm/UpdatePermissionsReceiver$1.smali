.class Lcom/android/server/pm/UpdatePermissionsReceiver$1;
.super Landroid/os/AsyncTask;
.source "UpdatePermissionsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UpdatePermissionsReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UpdatePermissionsReceiver;

.field final synthetic val$fpms:Landroid/content/pm/FlymePackageManager;

.field final synthetic val$i:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/pm/UpdatePermissionsReceiver;Landroid/content/Intent;Landroid/content/pm/FlymePackageManager;)V
    .registers 4
    .param p1, "this$0"  # Lcom/android/server/pm/UpdatePermissionsReceiver;

    .line 21
    iput-object p1, p0, Lcom/android/server/pm/UpdatePermissionsReceiver$1;->this$0:Lcom/android/server/pm/UpdatePermissionsReceiver;

    iput-object p2, p0, Lcom/android/server/pm/UpdatePermissionsReceiver$1;->val$i:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/server/pm/UpdatePermissionsReceiver$1;->val$fpms:Landroid/content/pm/FlymePackageManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 21
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UpdatePermissionsReceiver$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 9
    .param p1, "params"  # [Ljava/lang/Void;

    .line 23
    iget-object v0, p0, Lcom/android/server/pm/UpdatePermissionsReceiver$1;->val$i:Landroid/content/Intent;

    const-string/jumbo v1, "package_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "list":[Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_37

    array-length v2, v0

    if-nez v2, :cond_10

    goto :goto_37

    .line 27
    :cond_10
    nop

    .line 28
    array-length v2, v0

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_36

    aget-object v4, v0, v3

    .line 29
    .local v4, "pkg":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pkg : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UpdatePermissionsReceiver"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object v5, p0, Lcom/android/server/pm/UpdatePermissionsReceiver$1;->val$fpms:Landroid/content/pm/FlymePackageManager;

    invoke-virtual {v5, v4}, Landroid/content/pm/FlymePackageManager;->updatePermissions(Ljava/lang/String;)V

    .line 28
    .end local v4  # "pkg":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 33
    :cond_36
    return-object v1

    .line 25
    :cond_37
    :goto_37
    return-object v1
.end method
