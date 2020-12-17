.class public Lcom/meizu/settings/appclone/AppCloneUpdateHelper$EnableTask;
.super Landroid/os/AsyncTask;
.source "AppCloneUpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/appclone/AppCloneUpdateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EnableTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mPkg:Ljava/lang/String;

.field final synthetic this$0:Lcom/meizu/settings/appclone/AppCloneUpdateHelper;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/appclone/AppCloneUpdateHelper;Ljava/lang/String;)V
    .registers 3

    .line 29
    iput-object p1, p0, Lcom/meizu/settings/appclone/AppCloneUpdateHelper$EnableTask;->this$0:Lcom/meizu/settings/appclone/AppCloneUpdateHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/meizu/settings/appclone/AppCloneUpdateHelper$EnableTask;->mPkg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 7

    .line 35
    iget-object p1, p0, Lcom/meizu/settings/appclone/AppCloneUpdateHelper$EnableTask;->this$0:Lcom/meizu/settings/appclone/AppCloneUpdateHelper;

    invoke-static {p1}, Lcom/meizu/settings/appclone/AppCloneUpdateHelper;->access$000(Lcom/meizu/settings/appclone/AppCloneUpdateHelper;)Lcom/meizu/settings/appclone/AppCloneInit;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/meizu/settings/appclone/AppCloneInit;->enableAppCloneUser(Z)Z

    move-result p1

    if-nez p1, :cond_12

    return-object v1

    .line 40
    :cond_12
    iget-object p1, p0, Lcom/meizu/settings/appclone/AppCloneUpdateHelper$EnableTask;->this$0:Lcom/meizu/settings/appclone/AppCloneUpdateHelper;

    invoke-static {p1}, Lcom/meizu/settings/appclone/AppCloneUpdateHelper;->access$100(Lcom/meizu/settings/appclone/AppCloneUpdateHelper;)Ljava/util/List;

    move-result-object p1

    .line 41
    iget-object v2, p0, Lcom/meizu/settings/appclone/AppCloneUpdateHelper$EnableTask;->mPkg:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    const-string v2, "AppCloneUpdateHelper"

    if-nez p1, :cond_39

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enableAppClone pkg does not exit, maybe it has been remove, mPkg:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneUpdateHelper$EnableTask;->mPkg:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logW(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 46
    :cond_39
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doInBackground start pkg = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/meizu/settings/appclone/AppCloneUpdateHelper$EnableTask;->mPkg:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :try_start_4f
    iget-object p1, p0, Lcom/meizu/settings/appclone/AppCloneUpdateHelper$EnableTask;->this$0:Lcom/meizu/settings/appclone/AppCloneUpdateHelper;

    invoke-static {p1}, Lcom/meizu/settings/appclone/AppCloneUpdateHelper;->access$200(Lcom/meizu/settings/appclone/AppCloneUpdateHelper;)Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v3, p0, Lcom/meizu/settings/appclone/AppCloneUpdateHelper$EnableTask;->mPkg:Ljava/lang/String;

    const/16 v4, 0x3e7

    invoke-virtual {p1, v3, v4}, Landroid/content/pm/PackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I

    move-result p1
    :try_end_5d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4f .. :try_end_5d} :catch_85

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doInBackground finished pkg = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneUpdateHelper$EnableTask;->mPkg:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ret = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    if-ne p1, p0, :cond_7f

    goto :goto_80

    :cond_7f
    move p0, v0

    .line 56
    :goto_80
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :catch_85
    const-string p0, "doInBackground NameNotFoundException"

    .line 52
    invoke-static {v2, p0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logW(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 26
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/appclone/AppCloneUpdateHelper$EnableTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 2

    .line 61
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 26
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/appclone/AppCloneUpdateHelper$EnableTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
