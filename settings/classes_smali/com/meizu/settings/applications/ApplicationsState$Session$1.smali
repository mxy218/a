.class Lcom/meizu/settings/applications/ApplicationsState$Session$1;
.super Landroid/os/AsyncTask;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/applications/ApplicationsState$Session;->installSystemApkAsync(Landroid/content/pm/ApplicationInfo;)V
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/settings/applications/ApplicationsState$Session;

.field final synthetic val$appinfo:Landroid/content/pm/ApplicationInfo;


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/ApplicationsState$Session;Landroid/content/pm/ApplicationInfo;)V
    .registers 3

    .line 989
    iput-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$Session$1;->this$1:Lcom/meizu/settings/applications/ApplicationsState$Session;

    iput-object p2, p0, Lcom/meizu/settings/applications/ApplicationsState$Session$1;->val$appinfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .registers 2

    .line 992
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$Session$1;->this$1:Lcom/meizu/settings/applications/ApplicationsState$Session;

    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState$Session$1;->val$appinfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p0}, Lcom/meizu/settings/applications/ApplicationsState$Session;->access$300(Lcom/meizu/settings/applications/ApplicationsState$Session;Landroid/content/pm/ApplicationInfo;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 989
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/applications/ApplicationsState$Session$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .registers 8

    .line 997
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7f

    .line 998
    sget-object v0, Lcom/meizu/settings/applications/ApplicationsState;->mInstallingPackages:Ljava/util/List;

    monitor-enter v0

    .line 999
    :try_start_a
    iget-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState$Session$1;->val$appinfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1000
    sget-object v2, Lcom/meizu/settings/applications/ApplicationsState;->mInstallingPackages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1001
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1002
    sget-object v2, Lcom/meizu/settings/applications/ApplicationsState;->mInstallingPackages:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1004
    new-instance v2, Ljava/lang/String;

    const-string v4, " "

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1006
    sget-object v4, Lcom/meizu/settings/applications/ApplicationsState;->sInstance:Lcom/meizu/settings/applications/ApplicationsState;

    if-eqz v4, :cond_5b

    .line 1007
    sget-object v4, Lcom/meizu/settings/applications/ApplicationsState;->sInstance:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v4, v4, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    if-eqz v1, :cond_51

    const/4 v2, 0x0

    .line 1009
    iput-boolean v2, v1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->mIsSystemAppInstalling:Z

    .line 1010
    iget-object v2, v1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    .line 1012
    :cond_51
    sget-object v1, Lcom/meizu/settings/applications/ApplicationsState;->sInstance:Lcom/meizu/settings/applications/ApplicationsState;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/meizu/settings/applications/ApplicationsState;->addPackage(Ljava/lang/String;I)V

    goto :goto_73

    .line 1014
    :cond_5b
    iget-object v2, p0, Lcom/meizu/settings/applications/ApplicationsState$Session$1;->this$1:Lcom/meizu/settings/applications/ApplicationsState$Session;

    iget-object v2, v2, Lcom/meizu/settings/applications/ApplicationsState$Session;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v2, v2, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    .line 1016
    :goto_73
    iget-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState$Session$1;->this$1:Lcom/meizu/settings/applications/ApplicationsState$Session;

    iget-object v1, v1, Lcom/meizu/settings/applications/ApplicationsState$Session;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    invoke-static {v1, v2}, Lcom/meizu/settings/applications/ApplicationsState;->access$400(Lcom/meizu/settings/applications/ApplicationsState;Ljava/lang/String;)V

    .line 1020
    :cond_7a
    monitor-exit v0

    goto :goto_7f

    :catchall_7c
    move-exception p0

    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_a .. :try_end_7e} :catchall_7c

    throw p0

    .line 1023
    :cond_7f
    :goto_7f
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 989
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/applications/ApplicationsState$Session$1;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
