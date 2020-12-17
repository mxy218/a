.class Lcom/android/settings/wifi/details/WifiDetailPreferenceController$6;
.super Landroid/os/CountDownTimer;
.source "WifiDetailPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;JJ)V
    .registers 6

    .line 1127
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$6;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 4

    .line 1134
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$6;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$1500(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroidx/preference/MzPreferenceFragmentCompat;

    move-result-object v0

    const-string v1, "WifiDetailsPrefCtrl"

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$6;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$1500(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroidx/preference/MzPreferenceFragmentCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_17

    goto :goto_65

    .line 1138
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout for state:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$6;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v2}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$1300(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$6;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$1300(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_41

    .line 1140
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$6;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$1400(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;I)V

    goto :goto_64

    .line 1141
    :cond_41
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$6;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$1300(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_64

    .line 1142
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$6;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$1600(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    .line 1143
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$6;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$1700(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 1144
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$6;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    const/4 v0, 0x7

    invoke-static {p0, v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$1400(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;I)V

    goto :goto_64

    .line 1146
    :cond_5e
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$6;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$1400(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;I)V

    :cond_64
    :goto_64
    return-void

    :cond_65
    :goto_65
    const-string p0, "Ignore timeout since activity not exist!"

    .line 1135
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTick(J)V
    .registers 3

    return-void
.end method
