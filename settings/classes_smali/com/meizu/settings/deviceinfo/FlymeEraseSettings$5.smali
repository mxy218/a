.class Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$5;
.super Landroid/os/AsyncTask;
.source "FlymeEraseSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->wipeFrp(Ljava/lang/String;)V
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
.field mOldOrientation:I

.field mProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$pdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;


# direct methods
.method constructor <init>(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;Landroid/service/persistentdata/PersistentDataBlockManager;Ljava/lang/String;)V
    .registers 4

    .line 469
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$5;->this$0:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;

    iput-object p2, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$5;->val$pdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    iput-object p3, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$5;->val$action:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 469
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 2

    .line 475
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$5;->val$pdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {p0}, Landroid/service/persistentdata/PersistentDataBlockManager;->wipe()V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 469
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$5;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 3

    .line 481
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$5;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->hide()V

    .line 482
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$5;->this$0:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 483
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$5;->this$0:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget v0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$5;->mOldOrientation:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 484
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$5;->this$0:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;

    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$5;->val$action:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->access$800(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;Ljava/lang/String;)V

    :cond_1f
    return-void
.end method

.method protected onPreExecute()V
    .registers 2

    .line 490
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$5;->this$0:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;

    invoke-static {v0}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->access$900(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$5;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 491
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$5;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 495
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$5;->this$0:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$5;->mOldOrientation:I

    .line 496
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$5;->this$0:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method
