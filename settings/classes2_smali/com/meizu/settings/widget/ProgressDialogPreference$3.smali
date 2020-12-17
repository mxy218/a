.class Lcom/meizu/settings/widget/ProgressDialogPreference$3;
.super Landroid/os/AsyncTask;
.source "ProgressDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/widget/ProgressDialogPreference;->OnConfirmButtonClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/widget/ProgressDialogPreference;


# direct methods
.method constructor <init>(Lcom/meizu/settings/widget/ProgressDialogPreference;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/meizu/settings/widget/ProgressDialogPreference$3;->this$0:Lcom/meizu/settings/widget/ProgressDialogPreference;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2

    .line 94
    iget-object p1, p0, Lcom/meizu/settings/widget/ProgressDialogPreference$3;->this$0:Lcom/meizu/settings/widget/ProgressDialogPreference;

    invoke-static {p1}, Lcom/meizu/settings/widget/ProgressDialogPreference;->access$200(Lcom/meizu/settings/widget/ProgressDialogPreference;)Lcom/meizu/settings/widget/ProgressDialogPreference$OnProgressListener;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 95
    iget-object p0, p0, Lcom/meizu/settings/widget/ProgressDialogPreference$3;->this$0:Lcom/meizu/settings/widget/ProgressDialogPreference;

    invoke-static {p0}, Lcom/meizu/settings/widget/ProgressDialogPreference;->access$200(Lcom/meizu/settings/widget/ProgressDialogPreference;)Lcom/meizu/settings/widget/ProgressDialogPreference$OnProgressListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/meizu/settings/widget/ProgressDialogPreference$OnProgressListener;->doInbackground()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_17
    const/4 p0, 0x1

    .line 97
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 81
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/widget/ProgressDialogPreference$3;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onCancelled()V
    .registers 2

    .line 101
    iget-object p0, p0, Lcom/meizu/settings/widget/ProgressDialogPreference$3;->this$0:Lcom/meizu/settings/widget/ProgressDialogPreference;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/meizu/settings/widget/ProgressDialogPreference;->access$102(Lcom/meizu/settings/widget/ProgressDialogPreference;Z)Z

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 5

    .line 106
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/meizu/settings/widget/ProgressDialogPreference$3;->this$0:Lcom/meizu/settings/widget/ProgressDialogPreference;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/settings/widget/ProgressDialogPreference;->access$102(Lcom/meizu/settings/widget/ProgressDialogPreference;Z)Z

    .line 108
    iget-object v0, p0, Lcom/meizu/settings/widget/ProgressDialogPreference$3;->this$0:Lcom/meizu/settings/widget/ProgressDialogPreference;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/meizu/settings/widget/ProgressDialogPreference;->OnFinishedLoading(Z)V

    .line 109
    iget-object v0, p0, Lcom/meizu/settings/widget/ProgressDialogPreference$3;->this$0:Lcom/meizu/settings/widget/ProgressDialogPreference;

    invoke-static {v0}, Lcom/meizu/settings/widget/ProgressDialogPreference;->access$200(Lcom/meizu/settings/widget/ProgressDialogPreference;)Lcom/meizu/settings/widget/ProgressDialogPreference$OnProgressListener;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 110
    iget-object v0, p0, Lcom/meizu/settings/widget/ProgressDialogPreference$3;->this$0:Lcom/meizu/settings/widget/ProgressDialogPreference;

    invoke-static {v0}, Lcom/meizu/settings/widget/ProgressDialogPreference;->access$200(Lcom/meizu/settings/widget/ProgressDialogPreference;)Lcom/meizu/settings/widget/ProgressDialogPreference$OnProgressListener;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/meizu/settings/widget/ProgressDialogPreference$OnProgressListener;->finishExecute(Z)V

    .line 112
    :cond_27
    iget-object p0, p0, Lcom/meizu/settings/widget/ProgressDialogPreference$3;->this$0:Lcom/meizu/settings/widget/ProgressDialogPreference;

    invoke-static {p0, v1}, Lcom/meizu/settings/widget/ProgressDialogPreference;->access$302(Lcom/meizu/settings/widget/ProgressDialogPreference;Z)Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 81
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/widget/ProgressDialogPreference$3;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    .line 84
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 85
    iget-object v0, p0, Lcom/meizu/settings/widget/ProgressDialogPreference$3;->this$0:Lcom/meizu/settings/widget/ProgressDialogPreference;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/settings/widget/ProgressDialogPreference;->access$102(Lcom/meizu/settings/widget/ProgressDialogPreference;Z)Z

    .line 86
    iget-object v0, p0, Lcom/meizu/settings/widget/ProgressDialogPreference$3;->this$0:Lcom/meizu/settings/widget/ProgressDialogPreference;

    invoke-virtual {v0}, Lcom/meizu/settings/widget/ProgressDialogPreference;->OnPrepareLoading()V

    .line 87
    iget-object v0, p0, Lcom/meizu/settings/widget/ProgressDialogPreference$3;->this$0:Lcom/meizu/settings/widget/ProgressDialogPreference;

    invoke-static {v0}, Lcom/meizu/settings/widget/ProgressDialogPreference;->access$200(Lcom/meizu/settings/widget/ProgressDialogPreference;)Lcom/meizu/settings/widget/ProgressDialogPreference$OnProgressListener;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 88
    iget-object p0, p0, Lcom/meizu/settings/widget/ProgressDialogPreference$3;->this$0:Lcom/meizu/settings/widget/ProgressDialogPreference;

    invoke-static {p0}, Lcom/meizu/settings/widget/ProgressDialogPreference;->access$200(Lcom/meizu/settings/widget/ProgressDialogPreference;)Lcom/meizu/settings/widget/ProgressDialogPreference$OnProgressListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/meizu/settings/widget/ProgressDialogPreference$OnProgressListener;->onPreExecute()V

    :cond_1f
    return-void
.end method
