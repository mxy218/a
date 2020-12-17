.class Lcom/android/systemui/screenshot/AsyncTaskUtil$1;
.super Landroid/os/AsyncTask;
.source "AsyncTaskUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/AsyncTaskUtil;->doAsync(Ljava/lang/String;Lcom/android/systemui/screenshot/AsyncTaskUtil$AsyncCallBack;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callBack:Lcom/android/systemui/screenshot/AsyncTaskUtil$AsyncCallBack;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/AsyncTaskUtil$AsyncCallBack;)V
    .registers 2

    .line 10
    iput-object p1, p0, Lcom/android/systemui/screenshot/AsyncTaskUtil$1;->val$callBack:Lcom/android/systemui/screenshot/AsyncTaskUtil$AsyncCallBack;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 10
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/AsyncTaskUtil$1;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .registers 3

    const/4 v0, 0x0

    .line 18
    aget-object p1, p1, v0

    .line 19
    iget-object p0, p0, Lcom/android/systemui/screenshot/AsyncTaskUtil$1;->val$callBack:Lcom/android/systemui/screenshot/AsyncTaskUtil$AsyncCallBack;

    invoke-interface {p0, p1}, Lcom/android/systemui/screenshot/AsyncTaskUtil$AsyncCallBack;->doInBackground(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 10
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/AsyncTaskUtil$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 2

    .line 24
    iget-object p0, p0, Lcom/android/systemui/screenshot/AsyncTaskUtil$1;->val$callBack:Lcom/android/systemui/screenshot/AsyncTaskUtil$AsyncCallBack;

    invoke-interface {p0}, Lcom/android/systemui/screenshot/AsyncTaskUtil$AsyncCallBack;->onPostExecute()V

    return-void
.end method

.method protected onPreExecute()V
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/android/systemui/screenshot/AsyncTaskUtil$1;->val$callBack:Lcom/android/systemui/screenshot/AsyncTaskUtil$AsyncCallBack;

    invoke-interface {p0}, Lcom/android/systemui/screenshot/AsyncTaskUtil$AsyncCallBack;->onPreExecute()V

    return-void
.end method
