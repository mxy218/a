.class Lcom/android/settings/wifi/NetworkRequestDialogFragment$1;
.super Landroid/os/Handler;
.source "NetworkRequestDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/NetworkRequestDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)V
    .registers 2

    .line 318
    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$1;->this$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    .line 321
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_5

    goto :goto_10

    :cond_5
    const/4 p1, 0x0

    .line 323
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 324
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$1;->this$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    sget-object p1, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$ERROR_DIALOG_TYPE;->TIME_OUT:Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$ERROR_DIALOG_TYPE;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->stopScanningAndPopErrorDialog(Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$ERROR_DIALOG_TYPE;)V

    :goto_10
    return-void
.end method
