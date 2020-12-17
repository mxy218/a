.class Lcom/meizu/settings/calibration/CalibrationPreference$3;
.super Landroid/os/AsyncTask;
.source "CalibrationPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/calibration/CalibrationPreference;->OnConfirmButtonClick()V
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
.field final synthetic this$0:Lcom/meizu/settings/calibration/CalibrationPreference;


# direct methods
.method constructor <init>(Lcom/meizu/settings/calibration/CalibrationPreference;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/meizu/settings/calibration/CalibrationPreference$3;->this$0:Lcom/meizu/settings/calibration/CalibrationPreference;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2

    .line 77
    iget-object p0, p0, Lcom/meizu/settings/calibration/CalibrationPreference$3;->this$0:Lcom/meizu/settings/calibration/CalibrationPreference;

    invoke-virtual {p0}, Lcom/meizu/settings/calibration/CalibrationPreference;->startCalibrate()Z

    move-result p0

    .line 78
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 67
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/calibration/CalibrationPreference$3;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onCancelled()V
    .registers 2

    .line 82
    iget-object p0, p0, Lcom/meizu/settings/calibration/CalibrationPreference$3;->this$0:Lcom/meizu/settings/calibration/CalibrationPreference;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/meizu/settings/calibration/CalibrationPreference;->access$102(Lcom/meizu/settings/calibration/CalibrationPreference;Z)Z

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 4

    .line 87
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/meizu/settings/calibration/CalibrationPreference$3;->this$0:Lcom/meizu/settings/calibration/CalibrationPreference;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/settings/calibration/CalibrationPreference;->access$102(Lcom/meizu/settings/calibration/CalibrationPreference;Z)Z

    .line 89
    iget-object p0, p0, Lcom/meizu/settings/calibration/CalibrationPreference$3;->this$0:Lcom/meizu/settings/calibration/CalibrationPreference;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/meizu/settings/calibration/CalibrationPreference;->OnFinishedCalibrate(Z)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 67
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/calibration/CalibrationPreference$3;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    .line 70
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 71
    iget-object v0, p0, Lcom/meizu/settings/calibration/CalibrationPreference$3;->this$0:Lcom/meizu/settings/calibration/CalibrationPreference;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/settings/calibration/CalibrationPreference;->access$102(Lcom/meizu/settings/calibration/CalibrationPreference;Z)Z

    .line 72
    iget-object p0, p0, Lcom/meizu/settings/calibration/CalibrationPreference$3;->this$0:Lcom/meizu/settings/calibration/CalibrationPreference;

    invoke-virtual {p0}, Lcom/meizu/settings/calibration/CalibrationPreference;->OnPrepareCalibrate()V

    return-void
.end method
