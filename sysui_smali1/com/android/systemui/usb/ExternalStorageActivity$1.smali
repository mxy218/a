.class Lcom/android/systemui/usb/ExternalStorageActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ExternalStorageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/ExternalStorageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/ExternalStorageActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/ExternalStorageActivity;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/android/systemui/usb/ExternalStorageActivity$1;->this$0:Lcom/android/systemui/usb/ExternalStorageActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 80
    iget-object p0, p0, Lcom/android/systemui/usb/ExternalStorageActivity$1;->this$0:Lcom/android/systemui/usb/ExternalStorageActivity;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method
